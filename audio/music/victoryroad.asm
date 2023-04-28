Music_VictoryRoad_Ch1:
	tempo 144
	volume 7, 7
	duty_cycle 3
	note_type 12, 11, 2
.mainloop:
.loop1:
	sound_call .sub1
	sound_loop 6, .loop1
.loop2:
	octave 2
	note A_, 1
	octave 3
	note C#, 1
	note D_, 1
	rest 1
	octave 2
	note A_, 1
	octave 3
	note C#, 3
	octave 2
	note A_, 1
	octave 3
	note D_, 3
	octave 2
	note A_, 1
	octave 3
	note G#, 3
	sound_loop 2, .loop2
.loop3:
	sound_call .sub1
	sound_loop 2, .loop3
	sound_loop 0, .mainloop

.sub1:
	octave 2
	note G_, 1
	note B_, 1
	octave 3
	note C_, 1
	rest 1
	octave 2
	note G_, 1
	note B_, 3
	note G_, 1
	octave 3
	note C_, 3
	octave 2
	note G_, 1
	octave 3
	note F#, 3
	sound_ret

Music_VictoryRoad_Ch2:
	duty_cycle 3
	vibrato 16, 2, 4
.mainloop:
	note_type 12, 12, 2
	sound_call .sub1
	rest 2
	sound_call .sub1
	rest 1
	octave 4
	note C_, 1
	note_type 12, 11, 0
	note E_, 8
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	note E_, 15
	note D#, 1
	note_type 12, 11, 0
	note E_, 8
	octave 5
	note C_, 4
	octave 4
	note B_, 4
	note_type 12, 11, 0
	octave 5
	note E_, 8
	note_type 12, 11, 0
	note E_, 8
	note_type 12, 12, 0
	note D_, 8
	note C#, 4
	octave 4
	note A_, 4
	octave 5
	note C_, 8
	octave 4
	note A#, 4
	note F_, 4
	note A_, 12
	note D_, 1
	note F#, 1
	note A_, 1
	octave 5
	note C#, 1
	note D_, 16
	sound_loop 0, .mainloop

.sub1:
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	rest 1
	note F#, 1
	note F#, 1
	rest 2
	note G#, 1
	note G#, 1
	rest 2
	note A_, 1
	note A_, 1
	sound_ret

Music_VictoryRoad_Ch3:
	note_type 12, 2, 1
.mainloop:
.loop1:
	sound_call .sub1
	sound_loop 6, .loop1
.loop2:
	note D_, 1
	rest 1
	note B_, 1
	rest 1
	note F_, 1
	note A_, 3
	note D_, 1
	note B_, 1
	rest 2
	note D_, 1
	note B_, 3
	sound_loop 2, .loop2
.loop3:
	sound_call .sub1
	sound_loop 2, .loop3
	sound_loop 0, .mainloop

.sub1:
	octave 3
	note C_, 1
	rest 1
	note A_, 1
	rest 1
	note D#, 1
	note G_, 3
	note C_, 1
	note A_, 1
	rest 2
	note C_, 1
	note A_, 3
	sound_ret

Music_VictoryRoad_Ch4:
	drum_speed 12
.mainloop:
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 1
	drum_note 3, 3
	drum_note 4, 1
	drum_note 3, 3
	drum_note 4, 1
	drum_note 3, 3
	drum_note 3, 2
	drum_note 3, 2
	drum_note 4, 1
	drum_note 3, 3
	drum_note 4, 1
	drum_note 4, 1
	drum_note 3, 2
	drum_note 4, 1
	drum_note 3, 2
	drum_note 4, 1
	sound_loop 0, .mainloop

