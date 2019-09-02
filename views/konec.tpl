<html>
    <head>
        <title> Konec igre</title>
    </head>
    <body>
        % if zmaga == True:
            <h1>Čestitke!!! Zmagali ste!</h1>
        % else:
            <h1>Zmanjkalo vam je potez!</h1>
        % end

        <p>
            Končno stanje:<br><br>
            % for i in range(dim):
                % for j in range(dim):
                    {{sah[i][j]}};&nbsp
                % end
                <br>
            % end
        </p>

    <p>Ali želite poskusiti znova?</p>
        
        <button type="button" onclick="window.location.href = 'http://127.0.0.1:8080/';"> Nova igra </button>
    </body>
</html>