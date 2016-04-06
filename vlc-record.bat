@set SAVESTAMP=%DATE:/=-%@%TIME::=-%
@set FPS=20
@set WIDTH=1920
@set HEIGHT=1080

"c:\Program Files (x86)\VideoLAN\VLC\vlc.exe" ^
	dshow:// ^
	:x-dshow-vdev="" ^
	:x-dshow-adev="Mikrofon stacjonarny (3- Studio - Microsoft LifeCam.)"^
	:dshow-adev="Mikrofon stacjonarny (4- Studio - Microsoft LifeCam.)"^
	:x-dshow-adev="Mikrofon (C-Media USB Headphone Set  )"^
	:x-dshow-adev="Mikrofon (Realtek High Definition Audio)"^
	:dshow-chroma="YUY2" ^
	:dshow-size="%WIDTH%x%HEIGHT%	" ^
	:dshow-aspect-ratio="16:9" ^
	:x-dshow-audio-samplerate=44100  ^
	:x-dshow-audio-channels=1 ^
	:dshow-fps=%FPS% ^
	:live-caching=1000 ^
	:x-dshow-config ^
	:sout-keep ^
	--extraintf=logger ^
	-v ^
	--sout-avcodec-strict=-2 ^
	--sout=#transcode{vcodec=mp4v,fps=%FPS%,vb=10000,acodec=mp3,ab=128,width=%WIDTH%,height=%HEIGHT%,scale=1}:duplicate{dst=standard{access=file,mux=ts,dst="d:\Videos\%SAVESTAMP%.mp4"},dst=display{}}
	
	
rem	--sout=#transcode{vcodec=mp4v,fps=%FPS%,vb=10000,acodec=mp3,ab=128,width=%WIDTH%,height=%HEIGHT%,scale=1}:duplicate{dst=standard{access=file,mux=ts,dst="d:\Videos\%SAVESTAMP%.mp4"}},dst=display{noaudio}  
	
rem 	--sout=#transcode{vcodec=mp2v,fps=20,vb=10000,acodec=mp3,ab=192,audio-sync}:duplicate{dst=standard{access=file,mux=ts,dst="d:\Videos\%SAVESTAMP%.mp4"},dst=display{noaudio}} 
	
	
rem	--extraintf=logger ^
rem	-vvv ^
	
	
