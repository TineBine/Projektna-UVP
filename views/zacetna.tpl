<html>
    <head>
        <title> Začetna stan za konjev sprehod</title>
    </head>
    <body style="background-color:#ffeb99">
        <h1>Vpišite zahtevane vrednosti</h1>
        <p>
            Najprej vnesite dimenzijo šahovnice, nato pa veljaven položaj konja.<br>
            Glede na dimenzijo boste imeli na vrhu in na levi strani ustrezno<br>
            oštevilčene stolpce in vrstice. Zgornje levo polje ima koordinate (1, 1),<br>
            spodnje desno pa (dim, dim).
        </p>
        <br>

        <form action="/zacetna">
            Dimenzija šahovnice (5 do 16): <input type="text" name="dim"><br><br>
            Začetna vrstica konja: <input type="text" name="x"><br>
            Začetni stolpec konja: <input type="text" name="y">
            <br><br>
            <input type="submit" value="Začni igro">
        </form>
    </body>
</html>
