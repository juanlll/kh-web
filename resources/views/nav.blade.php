
    @foreach($items as $menu_item)
        <li class="nav-item">
        	<a class="nav-link js-scroll-trigger" href="{{ $menu_item->link() }}">{{ $menu_item->title }}</a>
        </li>
    @endforeach
