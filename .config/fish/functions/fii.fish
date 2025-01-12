function fii
if test (count $argv) -eq 0
echo "Usage: fii <search-query>"
return 1
end
find . -iname "*$argv[1]*"
end
