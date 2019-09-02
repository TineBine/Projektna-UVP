<html>
<head>
    <title>Skakačev sprehod</title>
</head>

<body>
    <h1>Skakačev sprehod</h1>

    % if vnos == False:
        <p> 
        Nemogoč premik!!!
        <br>
        Vnesite veljavno potezo!
        </p>
    % end
    <p>
        % for i in range(dim):
            % for j in range(dim):
                {{sah[i][j]}};&nbsp
            % end
            <br>
        % end
    </p>

    <p>
        Možne poteze (vrstica, stolpec):
        <br>
        % for i in range(len(poteze)):
            {{poteze[i]}};
        % end
        <br><br>
        Vnesite naslednjo potezo:
    </p>

    <form action="/sahovnica" method="POST">
        vrstica: <input type="text" name="x"><br>
        stolpec: <input type="text" name="y"><br>
        <input type="submit" value="Premakni konja">
        <button type="button" onclick="window.location.href = 'http://127.0.0.1:8080/sahovnica?vnos=True&nazaj=True';"> Povrni potezo </button>
    </form>
    

</body>
</html>