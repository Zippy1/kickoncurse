local badwords_kick_saying_F=1

--Just add more of this and edit it to add a swear word.
--Todo: Add a /addswearword command ingame for easier use.
--Remember you can use http://www.noswearing.com/dictionary for a list of "known" swear words from A to Z.

minetest.register_on_chat_message(function(name, message)
	if badwords_kick_saying_F~=1 then return false end
	msg=message:lower()
	if msg:find("fuck") or
	 msg:find("fukc")
		then
		minetest.kick_player(name, "Ey, you. Don't talk like that! It ain't allowed.")
		minetest.chat_send_all(name .. " said a swear word that is not accepted by the server. S/he was kicked.")
		print("badword: <".. name .."> " ..  message)
	else
		return false
	end
end)
