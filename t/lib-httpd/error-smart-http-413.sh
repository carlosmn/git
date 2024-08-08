echo "Status: 413 Payload Too Large"
echo "Content-Type: application/x-git-receive-pack-result"
echo
printf "%s" "0019ERR server-side error"
