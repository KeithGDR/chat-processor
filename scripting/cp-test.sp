#pragma newdecls required
#pragma semicolon 1

#include <sourcemod>
#include <chat-processor>

public Plugin myinfo = {
	name = "[ANY] Chat-Processor: Test",
	author = "Drixevel",
	description = "Testing plugin for the chat-processor plugin.",
	version = "1.0.0",
	url = "https://drixevel.dev/"
};

public Action CP_OnChatMessage(int& author, ArrayList recipients, char[] flagstring, char[] name, char[] message, bool & processcolors, bool & removecolors) {

	Format(name, MAXLENGTH_NAME, "{green}%s", name);
	Format(message, MAXLENGTH_MESSAGE, "{blue}%s", message);
	
	processcolors = true;
	removecolors = true;

	return Plugin_Continue;
}