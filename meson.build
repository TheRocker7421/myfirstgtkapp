# project name and programming language
project('com.github.therocker7421.myfirstgtkapp', 'vala', 'c')

# Create a new executable, list the files we want to compile, list the dependencies we need, and install
executable(
    meson.project_name(),
    'src/Application.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

# Include the translations module
i18n = import('i18n')

#Translate and install our .desktop file
i18n.merge_file(
    input: join_paths('data', 'com.github.therocker7421.myfirstgtkapp.desktop.in'),
    output: meson.project_name() + 'com.github.therocker7421.myfirstgtkapp.desktop',
    po_dir: join_paths(meson.source_root(), 'po'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications')
)

#Translate and install our .appdata file
i18n.merge_file(
    input: join_paths('data', 'myfirstgtkapp.appdata.xml.in'),
    output: meson.project_name() + 'myfirstgtkapp.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)

# Set our translation domain
subdir('po')
