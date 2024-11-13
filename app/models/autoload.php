<?php

// Autoloader functie
function autoload($class)
{
    // Zet de namespaces om naar bestandspaden
    $class = str_replace('\\', '/', $class);

    // Geef het pad naar het model bestand
    $path = __DIR__ . '/models/' . $class . '.php';

    // Als het bestand bestaat, laad het in
    if (file_exists($path)) {
        require_once $path;
    }
}

// Registreer de autoload functie
spl_autoload_register('autoload');
