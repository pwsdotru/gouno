# Golang module for UNO

The LibreOffice [UNO (Universal Network Objects) API](https://api.libreoffice.org/) is the underlying component technology that provides a programmable interface to control and extend the entire LibreOffice suite.

# Development

For run and check need run Libre Office in listing mode.

```bash
soffice --headless --accept="socket,host=localhost,port=2002;urp;"
````

Usage [startoffice.sh](./startoffice.sh) for start Libre Offce and [stopoffice.sh](./stopoffice.sh) for stop.

After start server running and listen port 2002 on localhost.