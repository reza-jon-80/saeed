local function run(msg, matches)
 local text = matches[2]
   if not is_sudo(msg) then
     return "فقط سودو"
   end
 if matches[1] == "plugin" then
  return text
 else
  local file = io.open("./plugins/"..matches[1], "w")
  file:write(text)
  file:flush()
  file:close()
  return "بابایی اینکار رو هم یاد گرفتم"
 end
end

return {
 description = "Simplest plugin ever!",
 usage = {
  "!echo [text] : return text",
  "!echo> [ext] [text] : save text to file",
 },
 patterns = {
  "^[!/]plugin ([^%s]+) (.*)$",
 },
 run = run
}
