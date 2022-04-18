# cURL

## Options

* `-L, --location`: (HTTP) If the server reports that the requested page has moved to a different location (indicated with a Location: header and a 3XX response code), this option will make curl redo the request on the new place.
* `-O, --remote-name`: Write output to a local file named like the remote file we get. (Only the file part of the remote file is used, the path is cut off.)
* `-V, --version`: Displays information about curl and the libcurl version it uses.
* `-X, --request <command>`: Specify request command (GET, POST, ...) to use
* `-i, --include`: Include protocol response headers in the output
* `-k, --insecure`: Allow insecure server connections when using SSL
* `-o, --output <file>`: Write output to `<file>` instead of stdout.
* `-v, --verbose`: Makes curl verbose during the operation. Useful for debugging and seeing what's going on "under the hood".
