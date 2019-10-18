{{--<div id="search-block">--}}
    <h4 class="search-title"> Skelbimu paieska: </h4>
    <form method="get" action="{{route('search')}}" class="search-block-wrapper">
        <div class="inside-search-block-wrapper">
            <select id="search-cat" name="searchCategoryId" class="large-input-category">
                <option >Kategorija</option>
                @foreach($data['categories'] as $category)
                <option value="{{$category->id}}">{{$category->title}}</option>
                @endforeach
            </select>
            <div class="main-search-key">
                <div class="main-search-key-half">
                    <div class="search-input-wrapper">
                        <select id="mark" name="mark" class="large-input">
                            <option>Markė</option>
                            @foreach($data['carMakes'] as $marke)
                                <option value="{{$marke->id}}">{{$marke->make}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="dual-search-input-wrapper">
                        <div class="small-input-wrapper" #id>
                            <select name="priceForm" class="small-input">
                                <option>Kaina nuo</option>
                                <option value="150">150</option>
                                <option value="300">300</option>
                                <option value="500">500</option>
                                <option value="1000">1000</option>
                                <option value="1500">1500</option>
                                <option value="2000">2000</option>
                                <option value="2500">2500</option>
                                <option value="3000">3000</option>
                                <option value="3500">3500</option>
                                <option value="4000">4000</option>
                                <option value="4500">4500</option>
                                <option value="5000">5000</option>
                                <option value="6000">6000</option>
                                <option value="7000">7000</option>
                                <option value="8000">8000</option>
                                <option value="9000">9000</option>
                                <option value="10000">10000</option>
                                <option value="11000">11000</option>
                                <option value="12000">12000</option>
                                <option value="13000">13000</option>
                                <option value="14000">14000</option>
                                <option value="15000">15000</option>
                                <option value="17500">17500</option>
                                <option value="20000">20000</option>
                                <option value="22500">22500</option>
                                <option value="25000">25000</option>
                                <option value="27500">27500</option>
                                <option value="30000">30000</option>
                                <option value="35000">35000</option>
                                <option value="40000">40000</option>
                                <option value="45000">45000</option>
                                <option value="50000">50000</option>
                                <option value="60000">60000</option>
                            </select>
                        </div>
                        <div class="small-input-wrapper">
                            <select name="priceTo" class="small-input">
                                <option>Kaina iki</option>
                                <option value="150">150</option>
                                <option value="300">300</option>
                                <option value="500">500</option>
                                <option value="1000">1000</option>
                                <option value="1500">1500</option>
                                <option value="2000">2000</option>
                                <option value="2500">2500</option>
                                <option value="3000">3000</option>
                                <option value="3500">3500</option>
                                <option value="4000">4000</option>
                                <option value="4500">4500</option>
                                <option value="5000">5000</option>
                                <option value="6000">6000</option>
                                <option value="7000">7000</option>
                                <option value="8000">8000</option>
                                <option value="9000">9000</option>
                                <option value="10000">10000</option>
                                <option value="11000">11000</option>
                                <option value="12000">12000</option>
                                <option value="13000">13000</option>
                                <option value="14000">14000</option>
                                <option value="15000">15000</option>
                                <option value="17500">17500</option>
                                <option value="20000">20000</option>
                                <option value="22500">22500</option>
                                <option value="25000">25000</option>
                                <option value="27500">27500</option>
                                <option value="30000">30000</option>
                                <option value="35000">35000</option>
                                <option value="40000">40000</option>
                                <option value="45000">45000</option>
                                <option value="50000">50000</option>
                                <option value="60000">60000</option>
                            </select>
                        </div>
                    </div>
                    <div class="search-input-wrapper">
                        <select name="bodyType" class="large-input">
                            <option>Kėbulo tipas</option>
                            @foreach($data['kebuloTipas'] as $kebulas)
                                <option value="{{$kebulas->data}}">{{$kebulas->data}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="main-search-key-half">
                    <div id="model-wrapper" class="search-input-wrapper">
                        <select name="model" class="large-input">
                            <option>Modelis</option>
                        </select>
                    </div>
                    <div class="dual-search-input-wrapper">
                        <div class="small-input-wrapper">
                            <select name="yearFrom" class="small-input">
                                <option>Metai nuo</option>
                                @foreach($data['metai'] as $metai)
                                    <option value="{{$metai->data}}">{{$metai->data}}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="small-input-wrapper">
                            <select name="yearTo" class="small-input">
                                <option>Metai iki</option>
                                @foreach($data['metai'] as $metai)
                                    <option value="{{$metai->data}}">{{$metai->data}}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                    <div class="search-input-wrapper">
                        <select name="petrolType" class="large-input">
                            <option>Kuro tipas</option>
                            @foreach($data['kuroTipas'] as $kuras)
                                <option value="{{$kuras->data}}">{{$kuras->data}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>

        </div>
        <button class="btn-3d red" type="submit"><span class="text-center">Search</span></button>
    </form>
<script>
    jQuery(document).ready(function(){
        jQuery('#mark').change(function(e){
            e.preventDefault();

            jQuery.ajax({
                url: "{{ route('ajax.carmodelresponse') }}",
                method: 'post',
                data: {markID: jQuery('#mark').val(), _token: '{{csrf_token()}}'},
                success: function (response) {
                    jQuery('#model-wrapper').html(response);
                },
            });
            document.getElementById("model-input").classList.add("large-input");
        });
    });

</script>
{{--</div>--}}