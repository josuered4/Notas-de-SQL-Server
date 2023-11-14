<H1>Indices</H1>
Un indice es un objeto de SQL que nos ayuda la velocidad de operaciones de recuperacion de datos en una tabla.<br> 
<em>En otras palabras, crea de una tabla un indice como si de un libro se tratase (este indice es creado apartir de una columna de la tabla) y al momento de realizar una consulta, se busca dentro de este el registro que cumpla con la condicion en lugar de leer la tabla completa. <br>

"La busqueda se realiza en forma de arbol y no una por una"
</em>

La creación de indices es una practica habitual en tablas que son frecuentemente consultadas ya sea directa o indirectamente.

<strong>Creación de Indices</strong>

    //Indice Clustered
    Create Clustered Index i_name
        On Clients(id);

            
    //Indice Nonclustered
    Create Nonclustered Index i_name
        On Clients(name);


<em>Si al momento de crear un campo y en tu modelo de nogocios ves que hay muchas consultas en sobre este campo, se recomienda hacerlo indice</em>

<h2>Tipos de Indice</h2>
Existen diferentes tipos de indices y cada tipo tiene caracteristicas especificas que se adaptan a difentes esenarios y tipos de consultas.
</br>
</br>

<li><strong>Indice Clustered</strong></li>
Este tipo de indice determina el orden fisico de los registros de una tabla. La misma esta organizada según el orden del índice. <strong><em>Una tabla solo puede tener un indice clusteres</em></strong>
<em>(Este indice esta muy relacionado con el indice del los registros).</em>

    //Indice Clustered
    Create Clustered Index i_name
        On Clients(id);


<li><strong>Indice No Clustered</strong></li>
Un Indice No Clustered no ordena los datos físicos dentro de la tabla. En su lugar, crea un objeto separado dentro de una tabla que apunta a las filas de la tabla original después de crearla. 
 <strong><em>Una tabla puede tener multiples indices de este tipo.</em></strong>

    //Indice Nonclustered
    Create Nonclustered Index i_name
        On Clients(name);


