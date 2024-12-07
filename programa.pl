% Aquí va el código.
%Marzocca, Damian

%Punto 1
%casa(metrosCuadrados).
%departamento(ambientes,banios).
%loft(anio).
viveEn(juan,casa(120),almagro).
viveEn(nico,departamento(3,2),almagro).
viveEn(alf,departamento(3,1),almagro).
viveEn(julian,loft(2000),almagro).
viveEn(vale,departamento(4,1),flores).
viveEn(fer,casa(110),flores).

%Punto2
barrioCopado(Barrio):-
    esBarrio(Barrio),
    forall(viveEn(_,Propiedad,Barrio), propiedadCopada(Propiedad)).
    
esBarrio(Barrio):-viveEn(_,_,Barrio).

propiedadCopada(casa(Metros)):- Metros>100.

propiedadCopada(departamento(Ambientes,_)):-Ambientes > 3.

propiedadCopada(departamento(_,Banios)):- Banios>1.

propiedadCopada(loft(Anio)):-Anio>2015.

