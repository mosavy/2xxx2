local function run(msg, matches)
local group = load_data('bot/group.json')	
local addgroup = group[tostring(msg.chat_id)]
if addgroup and not is_owner(msg) or not is_momod(msg) then
if is_momod(msg) or is_robot(msg) then
return false
else
local group = load_data('bot/group.json')
		
local group_edit_lock = group[tostring(msg.chat_id)]['settings']['lock_edit']
local is_edit_msg = msg.text:match("!!!edit:")
--if group_edit_lock == 'yes' and is_edit_msg or data.ID == 'UpdateMessageEdited' or editmessage(data) then			
if msg.edited and group_edit_lock == 'yes' then
tg.deleteMessages(msg.chat_id_, {[0] = msg.id_ })
end

end
end
end

return {
  patterns = {
    "^(.*)$",
  },
  run = run
}
