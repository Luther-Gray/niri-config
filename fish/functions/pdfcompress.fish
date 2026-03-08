function pdfcompress --description 'Compress scanned image-heavy PDFs with Ghostscript'
    fd -e pdf -0 | parallel -0 --bar --eta \
        'gs -o {.}_opt.pdf -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dDownsampleColorImages=true -dColorImageResolution=150 -dColorImageDownsampleType=/Bicubic -dDownsampleGrayImages=true -dGrayImageResolution=150 -dDownsampleMonoImages=true -dMonoImageResolution=300 -dNOPAUSE -dQUIET -dBATCH {} && mv -f {.}_opt.pdf {} 2>/dev/null || echo "Failed on {}"'
end