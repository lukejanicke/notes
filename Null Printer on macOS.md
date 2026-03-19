# Null Printer on macOS

Run `cUpsctl WebInterface=yes`.

```shell
cUpsctl WebInterface=yes
```

Open [localhost:631](http://localhost:631). (May need to disable Cloudflare WARP.)

Go to **Administration**.

Select **Add Printer**.

Enter username and password.

Choose *LPD/LPR Host or Printer* and **Continue**.

Set *Connection* to `file:/dev/null` and **Continue**.

```
file:///dev/null
```

Set *Name*, *Description* and *Location*.

| Field       | Value                     |
| ----------- | ------------------------- |
| Name        | **null**                  |
| Description | **This is not a printer** |
| Location    | **Nowhere**               |

Select *Share This Printer* and **Continue**. 

Choose *Make* ‘Generic’ and **Continue**.

Choose *Model* ‘Generic PostScript Printer (en)’ and **Add Printer**.

Set *Media Size* to ‘A4’ and **Set Default Options**.
