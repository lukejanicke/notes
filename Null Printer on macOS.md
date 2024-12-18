# Null Printer on macOS

Run `cUpsctl WebInterface=yes`.

Open [localhost:631](http://localhost:631).

Go to **Administration**.

Select **Add Printer**.

Enter root username and password.

Choose *LPD/LPR Host or Printer* and **Continue**.

Set *Connection* to `file:/dev/null` and **Continue**.

Set *Name*, *Description* and *Location* to something silly, select *Share This Printer*, and **Continue**. 

Choose *Make* ‘Generic’ and **Continue**.

Choose Model ‘Generic PostScript Printer (en)’ and **Add Printer**.

Set *Media Size* to A4 and **Set Default Options**.
