--ongoing message settings
local message = "important announcement from kinglit: PLEASE BRO HAVE A HEART"
local automessage = true

--script
coroutine.resume(coroutine.create(function()
  if automessage then
    local hint = Instance.new("Hint",game:FindService("CoreGui"))
    hint.Text = message
    wait(2)
    hint:Destroy()
  end
end))
