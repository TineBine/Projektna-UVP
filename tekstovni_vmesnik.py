import model

def vnosInt():
    while True:
        try:
            i = int(input())
            return i
        except:
            print("Vnesite število!")

def izpis():
    print("  |", end=" ")
    for i in range(igra.dim-1):
        print(i+1, end="  ")
    print(igra.dim)
    for i in range(igra.dim*3+1):
        print("-", end="")
    print("-")
    for i in range(igra.dim):
        print(i+1,"|", end=" ")
        for j in range(igra.dim-1):
            print(igra.sahovnica[i][j], end=", ")
        print(igra.sahovnica[i][igra.dim-1])

vnos = True
while vnos: 
    try:
        print("Vnesite velikost sahovnice(Max:20):", end=" ")
        while True:
            d = vnosInt()
            if d <= 20 and d >= 0:
                break
            else:
                print("Vnesite veljavno velikost šahovnice!")    
        print("Vnesite začetni koordinati: ")
        print("Vrstica:", end=" ")
        x = vnosInt()
        print("Stolpec:", end=" ")
        y = vnosInt()

        igra = model.Igra(d,x,y)
        vnos = False
        print()
    except:
        print("Vnesite veljavno velikost oz. koordinate") 
        print()




while True:
    izpis()
    print("Možne poteze:")
    igra.mozen_premik()
    if len(igra.moz_pos) > 0:
        for i in range(len(igra.moz_pos_izpis)-1):
            print(igra.moz_pos_izpis[i], end=", ")
        print(igra.moz_pos_izpis[len(igra.moz_pos_izpis)-1])
        print()
    else:
        print()
        for mesto in range(igra.dim):
            if 0 not in igra.sahovnica[mesto]:
                if mesto == igra.dim-1:
                    print("Zmagali ste")
                else:
                    continue
            else:
                print("Zmanjkalo vam je potez")
                break
        break
    print("Vnesite koordinate novega polja: ")
    print("Vrstica:", end=" ")
    x1 = vnosInt()-1
    print("Stolpec:", end=" ")
    y1 = vnosInt()-1
    if igra.spremeni_pozicijo(x1,y1) == False:
        print("\nNemogoč premik!!!\nVnesite veljavno potezo!")
    igra.moz_pos.clear()
    igra.moz_pos_izpis.clear()
    print()
            
print("Konec igre")