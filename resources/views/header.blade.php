<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Blog da Samplemed</title>

        @vite(['resources/css/app.css', 'resources/js/app.js'])

        <meta name="csrf-token" content="{{ csrf_token() }}">

    </head>
    <body>

