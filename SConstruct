env = Environment(
    BUILD_DIR = '#build',

    CPPPATH = [
        'src',
    ],

    LINKFLAGS = [
        '-framework', 'Cocoa',
        '-framework', 'Foundation',
        '-framework', 'OpenGL',
    ],
)

SConscript(
    dirs = '.',
    variant_dir = env.subst('$BUILD_DIR'),
    duplicate = False,
    exports = dict(env = env.Clone()),
)
