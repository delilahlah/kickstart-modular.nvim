return {
  'saghen/blink.cmp',
  version = 'v0.11.0',
  opts = {
    completion = {
      -- Insert completion item on selection, don't select by default
      list = {
        selection = {
          auto_insert = false,
        },
      },
    },
    keymap = {
      preset = 'super-tab',
    },
  },
}
