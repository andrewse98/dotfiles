-- Style for git
th.git = th.git or {}
th.git.unknown_sign = " "
th.git.modified_sign = "M"
th.git.deleted_sign = "D"
th.git.clean_sign = "✔"

-- Call plugins
require("git"):setup({ order = 1500 })
require("duckdb"):setup()
