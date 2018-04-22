<%@page contentType="text/html;charset=UTF-8" %>
<div role="navigation">
    <nav id="header" class="navbar navbar-dark bg-dark">
        <a href="#" class="navbar-brand" >Дворики Львова</a>
        <ul class="nav justify-content-center">
            <li class="nav-item">
                <a class="nav-link text-light" href="#">Додати дворик</a>
            </li>
            <sec:authorize access="hasAnyRole('ROLE_ADMIN')">
                <li class="nav-item">
                    <a class="nav-link text-light" href="#">Admin</a>
                </li>
            </sec:authorize>

        </ul>
    </nav>
</div>
