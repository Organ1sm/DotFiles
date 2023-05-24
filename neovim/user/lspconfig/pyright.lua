return {
  settings = {
    python = {
      analysis = {
        typeCheckingMode = "off", -- "off" | "basic" | "strict"
        logLevel = "Information",
      },
    },
    pyright = {
      --[[
                Disables all language services except for “hover”.
                This includes type completion, signature completion, find definition, find references, and find symbols in file.
                This option is useful if you want to use pyright only as a type checker but want to run another Python language server for language service features.
                ]]
      disableLanguageServices = false,

      --[[
                Disables the “Organize Imports” command.
                This is useful if you are using another extension that provides similar functionality and you don’t want the two extensions to fight each other.
                Accessible in Neovim with :PyrightOrganizeImports
                ]]
      disableOrganizeImports = true,
    },
  },
}
