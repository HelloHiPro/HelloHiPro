--ongoing message settings
local message = "PLS TELA PLS ISUXHEIAIIAIAOXI"
local automessage = false

--script
coroutine.resume(coroutine.create(function()
  if automessage then
    local hint = Instance.new("Hint",game:FindService("CoreGui"))
    hint.Text = message
    wait(2)
    hint:Destroy()
  end
end))
