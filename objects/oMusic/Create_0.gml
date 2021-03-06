/// @description

audio_group_load(audio_group_music);

total_beats = 0;
beats_per_min		= oController.audio_table[# audiotable.bpm, global.level_counter];
max_beats_on_track	= oController.audio_table[# audiotable.bars, global.level_counter] * 4;
max_bars_on_track	= oController.audio_table[# audiotable.bars, global.level_counter];
bar_start			= oController.audio_table[# audiotable.barStart, global.level_counter];
start_beat			= oController.audio_table[# audiotable.barStart, global.level_counter] * 4;
bar_end				= oController.audio_table[# audiotable.barEnd, global.level_counter];
end_beat			= oController.audio_table[# audiotable.barEnd, global.level_counter] * 4;

yy = 0;

level_name = "Level_" + string(global.level_counter) + ".csv";
LevelGrid = load_csv(level_name);


global.beatsPerMinute = beats_per_min;
global.beatsPerSecond = 60/beats_per_min;
global.target_value = 0;

start_time = 0;
time_tracking = false;
time = 0;

bpm = round(global.beatsPerSecond * 1000) //- current_time;
test = 0;

text[r.bad] = "Bad";
text[r.good] = "Good";
text[r.great] = "Great";
text[r.perfect] = "Perfect";

//Control the spawning of instances using the bpm, current system will spawn about 3 every time
bpmTrigger = true;

level_track = "";
