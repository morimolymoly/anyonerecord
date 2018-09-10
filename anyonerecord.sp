#include<sourcemod>
#include<cstrike>

public Plugin:myinfo =
{
	name = "anyone_record",
	description = "Anyone can exec tv_record",
	author = "morimolymoly",
	version = "1.00",
	url = "https://morimolymoly.com"
}

public void:OnPluginStart()
{
	RegConsoleCmd("tvrecord", command_record, "", 0);
	RegConsoleCmd("stoprecord", command_stoprecord, "", 0);
}

public Action:command_record(client, args)
{
	new String:title_movie[80];
	GetCmdArg(1, title_movie, 80);
	ServerCommand("tv_record %s", title_movie);
}

public Action:command_stoprecord(client, args)
{
	ServerCommand("tv_stoprecord");
}
