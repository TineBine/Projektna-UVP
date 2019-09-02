import bottle
import model


igra = model.Igra()

@bottle.get('/')
def zacetna():
    return bottle.template('naslovnica.tpl')

@bottle.get('/zacetna')
def setup():
    try:
        dim = int(bottle.request.query['dim'])
        if dim > 16 or dim < 5:
            dim = 'a'
        x = int(bottle.request.query['x'])
        y = int(bottle.request.query['y'])
        igra.inicializacija(dim,x,y)
    except:
       return bottle.template('zacetna.tpl')
    bottle.redirect('/sahovnica?vnos=True&nazaj=')
    

@bottle.get('/sahovnica')
def game():
    nazaj = bool(bottle.request.query['nazaj'])
    if nazaj == True:
        igra.povrni_pozicijo()
        bottle.redirect('/sahovnica?vnos=True&nazaj=')    
    igra.moz_pos.clear()
    igra.moz_pos_izpis.clear()
    igra.mozen_premik()
    if len(igra.moz_pos) == 0:
        for mesto in range(igra.dim):
            if 0 not in igra.sahovnica[mesto]:
                if mesto == igra.dim-1:
                    bottle.redirect('/konec?zmaga=True')
                else:
                    continue
            else:
                bottle.redirect('/konec?zmaga=')
    vnos = bool(bottle.request.query['vnos'])
    return bottle.template('sahovnica.tpl', dim = igra.dim, sah = igra.sahovnica, poteze = igra.moz_pos_izpis, vnos = vnos )

@bottle.post('/sahovnica')
def update():
    igra.moz_pos.clear()
    igra.moz_pos_izpis.clear()
    igra.mozen_premik()
    try:
        x1 = int(bottle.request.forms['x'])-1
        y1 = int(bottle.request.forms['y'])-1
    except:
        bottle.redirect('/sahovnica?vnos=&nazaj=')
    if igra.spremeni_pozicijo(x1,y1) == False:
        bottle.redirect('/sahovnica?vnos=&nazaj=')
    bottle.redirect('/sahovnica?vnos=True&nazaj=')
        

@bottle.get('/konec')
def game():
    zmaga = bool(bottle.request.query['zmaga'])
    return bottle.template('konec.tpl', zmaga = zmaga, dim = igra.dim, sah = igra.sahovnica)

bottle.run(debug=True, reloader=True)