<html>
<head>
    <title>Konjev sprehod</title>
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
        p {
            font-family: verdana;
        }
    </style>
</head>

<body style="background-color:#ffeb99">
    <h1>Skakačev sprehod</h1>

    % if vnos == False:
        <p> 
        Nemogoč premik!!!
        <br>
        Vnesite veljavno potezo!
        </p>
    % end

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