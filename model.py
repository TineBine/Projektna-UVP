class Igra():
    dim = 0
    sahovnica = []
    pos = []
    moz_pos = []
    moz_pos_izpis = []
    def __init__(self,d,x,y):
        self.dim = d
        self.sahovnica = [[0 for i in range(self.dim)] for j in range(self.dim)]
        self.pos.clear()
        self.pos.append(x-1)
        self.pos.append(y-1)
        self.sahovnica[self.pos[0]][self.pos[1]] = 'K'

    #METODE KONJ
    def spremeni_pozicijo(self,x,y):
        self.nov_pos = [(x,y)]
        if self.nov_pos[0] in self.moz_pos:
            self.sahovnica[self.pos[0]][self.pos[1]] = 'X'
            self.pos[0] = x
            self.pos[1] = y
            self.sahovnica[self.pos[0]][self.pos[1]] = 'K'
            return True
        else:
            return False
            

    def mozen_premik(self):
        premiki = [(1,2),(1,-2),(-1,2),(-1,-2),(2,1),(2,-1),(-2,1),(-2,-1)] 
        for premik in premiki:
            x = self.pos[0] + premik[0]
            y = self.pos[1] + premik[1]

            if x < 0 or x >= self.dim:
                continue
            elif y < 0 or y >= self.dim:
                continue
            elif self.sahovnica[x][y] == 'X':
                continue   
            else:
                self.moz_pos.append((x,y))
                self.moz_pos_izpis.append((x+1,y+1))

    #Druge metode



    #Program


