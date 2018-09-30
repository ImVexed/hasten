import terminal, cligen, httpclient, json

proc hasten(url="https://hastebin.com/", raw=false): int =
    if isatty(stdin):
        echo "No data provided, see --help"
    else:
        try:
            let res = parseJson postContent(url & "documents", "", readAll(stdin))
            echo url & res["key"].getStr
        except:
            echo "Error occured while uploading document"

    return 1
  
dispatch(hasten, prelude = "Usage:\necho Hello, World! | ", help = {"url":"base url to upload to", "raw":"return the raw URL"})