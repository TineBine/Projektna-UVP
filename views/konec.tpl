<html>
    <head>
        <title> Konec igre</title>
        <style>
            table, th, td {
                border: 1px solid black;
                border-collapse: collapse;
            }
            th, td {
                width:40px;
                height:40px;
                text-align: center;
            }
            th {
                background-color:#994d00;
            }
            button {
                background-color:#994d00;
            }
        </style>
    </head>
    <body style="background-color:#ffeb99">
        % if zmaga == True:
            <h1 style="color:#7300e6";>Čestitke!!! Zmagali ste!</h1>
        % else:
            <h1>Zmanjkalo vam je potez!</h1>
        % end

        <p>
        Končno stanje:<br><br>
        <table>
            <tr>
            <th>/</th>
            % for i in range (dim):
                <th>{{i+1}}</th>
            % end
            </tr>
            % for i in range (dim):
                <tr>
                <th>{{i+1}}</th>
                % for j in range (dim):
                    % if (i+j)%2==0:
                        % if sah[i][j] == 'K':
                            <td style="background-color:#ffd9b3">♞</td>
                        % else:
                            <td style="background-color:#ffd9b3">{{sah[i][j]}}</td>    
                        % end
                    % else:
                        % if sah[i][j] == 'K':
                            <td style="background-color:#ff8000">♞</td>
                        % else:
                            <td style="background-color:#ff8000">{{sah[i][j]}}</td>   
                        % end
                    % end
                % end
                </tr>
            % end
        </table>
        </p>

    <p>Ali želite poskusiti znova?</p>
        
        <button type="button" onclick="window.location.href = 'http://127.0.0.1:8080/';"> Nova igra </button>
    </body>
</html>