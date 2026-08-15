-- nullius-visual-tweaks 在 data-updates 阶段为接线工具写死了英文名称
-- （"Electrical wire" / "Make electrical wire"，见 scripts/power-lines.lua），
-- 不走 locale 键，任何语言包都无法覆盖。这里将其改回 locale 键引用，
-- 使中文（及英文兜底）翻译生效。
if mods["nullius-visual-tweaks"] then
  local setting = settings.startup["nvt-change-toolbar-wire-icon"]
  if setting and setting.value then
    local wiring_tool = data.raw.item["copper-wire"]
    if wiring_tool then
      wiring_tool.localised_name = {"item-name.nvt-electrical-wire"}
    end
    local wiring_tool_shortcut = data.raw.shortcut["give-copper-wire"]
    if wiring_tool_shortcut then
      wiring_tool_shortcut.localised_name = {"shortcut-name.nvt-make-electrical-wire"}
    end
  end
end
