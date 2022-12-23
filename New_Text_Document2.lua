--ongoing message settings
local message = "SUIIIIIIIIIIIIIIIIIIIIIIIIIIIIII"
local automessage = true

--script
coroutine.resume(coroutine.create(function()
  if automessage then
    local hint = Instance.new("Hint",game:FindService("CoreGui"))
    hint.Text = message
    wait(1)
    hint:Destroy()
  end
end))
