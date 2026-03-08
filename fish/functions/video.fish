function video --wraps=yt-dlp --description 'Downloads a video/channel from YouTube with sane defaults (480p, archive, sleep, etc.)'
    yt-dlp \
        --download-archive downloaded.txt \
        --sleep-interval 3 \
        --max-sleep-interval 7 \
        -f "bestvideo[height<=480]+bestaudio/best[height<=480]" \
        --merge-output-format mp4 \
        -o "%(upload_date)s - %(title)s.%(ext)s" \
        $argv
end
