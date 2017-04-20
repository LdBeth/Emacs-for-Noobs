<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<!-- LINK-REV-MADE -->
<link rev="made" href="mailto:webmaster@Costume-Party.local">
<!-- LINK-REV-MADE -->
<title>Esto es un completo sistema de búsqueda</title>
<style type="text/css"><!--
  strong.keyword { color: Red; }
  p.example      { text-indent: 1em; 
                   color: Navy;
		   font-weight: bold;
                   font-family: monospace; }
  code           { color: Navy;
                   font-family: monospace; }
  code.example   { color: Navy;
		   font-weight: bold;
                   font-family: monospace; }
  code.operator  { color: Navy;
                   font-family: monospace; 
		   font-weight: bold; }
--></style>
</head>
<body lang="es">
<h1>Esto es un completo sistema de búsqueda</h1>
<p>
Este índice contiene <!-- FILE --> 8 <!-- FILE --> documentos y
<!-- KEY --> 4,325 <!-- KEY --> palabras clave. 
</p>
<p>
<strong>Ultima modificación: <!-- DATE --> 2017-04-20 <!-- DATE --></strong>
</p>
<hr>
<form method="get" action="{cgi}">
<p>
<strong>Cadena de Búsqueda:</strong> 
<input type="text" name="query" size="40">
<input type="submit" name="submit" value="Buscar!">
<!-- <input type="hidden" name="idxname" value="foobar"> -->
<a href="{cgi}">[Cómo buscar]</a>
</p>
<p>
<strong>Visualizar:</strong>
<select name="max">
<option value="10">10</option>
<option selected value="20">20</option>
<option value="30">30</option>
<option value="50">50</option>
<option value="100">100</option>
</select>
<strong>Descripción:</strong>
<select name="result">
<option selected value="normal">normal</option>
<option value="short">corta</option>
</select>
<strong>Orden:</strong>
<select name="sort">
<option selected value="score">por puntuación</option>
<option value="date:late">por fecha ascendente</option>
<option value="date:early">por fecha descendente</option>
<option value="field:subject:ascending">por título ascendente</option>
<option value="field:subject:descending">por título descendente</option>
<option value="field:from:ascending">por autor ascendente</option>
<option value="field:from:descending">por autor descendente</option>
<option value="field:size:ascending">por tamaño ascendente</option>
<option value="field:size:descending">por tamaño descendente</option>
<option value="field:uri:ascending">por URI ascendente</option>
<option value="field:uri:descending">por URI descendente</option>
</select>
</p>
<!--
<p>
<strong>Target:</strong>
<ul>
<li><input type="checkbox" name="idxname" value="foo" checked>foo</li>
<li><input type="checkbox" name="idxname" value="bar">bar</li>
<li><input type="checkbox" name="idxname" value="baz">baz</li>
</ul>
</p>
-->
</form>
