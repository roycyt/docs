# cURL

## Output

* If not told otherwise, curl writes the received data to stdout. It can be instructed to instead save that data into a local file, using the -o, --output or -O, --remote-name options.

## Progress meter

* curl normally displays a progress meter during operations, indicating the amount of transferred data, transfer speeds and estimated time left, etc. The progress meter displays the transfer rate in bytes per second.
* If you prefer a progress "bar" instead of the regular meter, -#, --progress-bar is your friend. You can also disable the progress meter completely with the -s, --silent option.

## Options


* -G, --get: When used, this option will make all data specified with -d, --data, --data-binary or --data-urlencode to be used in an HTTP GET request instead of the POST request that otherwise would be used. The data will be appended to the URL with a '?' separator.
* `-L, --location`: (HTTP) If the server reports that the requested page has moved to a different location (indicated with a Location: header and a 3XX response code), this option will make curl redo the request on the new place.
* `-O, --remote-name`: Write output to a local file named like the remote file we get. (Only the file part of the remote file is used, the path is cut off.)
* `-V, --version`: Displays information about curl and the libcurl version it uses.
* `-X, --request <command>`: Specify request command (GET, POST, ...) to use
* `-i, --include`: Include protocol response headers in the output
* `-k, --insecure`: Allow insecure server connections when using SSL
* `-o, --output <file>`: Write output to `<file>` instead of stdout.
* `-v, --verbose`: Makes curl verbose during the operation. Useful for debugging and seeing what's going on "under the hood".
