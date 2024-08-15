@include('header')

<div class="lg:container mx-auto p-10">

    <h1>Login</h1>

    <form method="POST" action="{{ route('login') }}">
        @csrf
        <p><input type="email" name="email" placeholder="E-mail" class="form-control"></p><br>
        <p><input type="password" name="password" placeholder="Senha" class="form-control"></p><br>
        <p><button type="submit" class="btn-primary">Entrar</button></p>
    </form>
</div>

@include('footer')
