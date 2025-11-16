HugoThemeInfo = provider(
    doc = "Provider for a Hugo theme.",
    fields = {
        "name": "Name of the theme.",
        "path": "Package path.",
        "files": "Source files that are part of the theme.",
    }
)

def _hugo_theme_impl(ctx):
    return [
        HugoThemeInfo(
            name = ctx.attr.theme_name or ctx.label.name,
            path = ctx.label.package,
            files = depset(ctx.files.srcs),
        )
    ]

hugo_theme = rule(
    attrs = {
        "theme_name": attr.string(
        ),
        "srcs": attr.label_list(
            mandatory = True,
            allow_files = True,
        ),
    },
    provides = [HugoThemeInfo],
    implementation = _hugo_theme_impl,
)
