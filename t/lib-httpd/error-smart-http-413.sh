env >/tmp/env.txt
if [ "$REQUEST_URI" = "/error_smart_413/info/refs?service=git-receive-pack" ]; then
	echo "Content-Type: application/x-git-receive-pack-advertisement"
	echo
	printf "001e# service=git-receive-pack"
	printf "00000000"
else
	if [ "$CONTENT_LENGTH" = "4" ]; then
		echo "Content-Type: application/x-git-receive-pack-result"
		echo
	else
		# echo "Status: 413 Payload Too Large"
		# echo "Content-Type: application/x-git-receive-pack-result"
		# echo
		# printf "002e\002fatal: pack exceeds maximum allowed size\n"
		# printf "005b\0010028unpack unpack-objects abnormal exit\n"
		# printf "002ang refs/tags/will-fail unpacker error\n"
		# printf "%s" "00000000"
		echo "Content-Type: application/x-git-upload-pack-result"
		echo
		printf "%s" "0019ERR server-side error"
	fi
fi
