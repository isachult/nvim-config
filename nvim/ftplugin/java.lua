local config = {
    cmd = { vim.fn.expand('~/.local/share/nvim/mason/bin/jdtls') },
    root_dir = require('jdtls.setup').find_root({'.git', 'mvnw', 'gradlew'}),
}
require('jdtls').start_or_attach(config)
