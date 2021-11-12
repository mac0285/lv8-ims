<div class="  flex justify-center items-center">
    <div class="container flex flex-col gap-4 mx-8">
        <label class="text-gray-700 font-semibold tracking-wider text-lg"> </label>
        <div class="bg-gray-100 rounded-lg w-full h-auto py-4 flex flex-row justify-between divide-x divide-solid divide-gray-400">
            <div class="relative flex-1 flex flex-col gap-2 px-4">
                <label class="text-gray-800 text-base font-semibold tracking-wider">Total Komputer</label>
                <label class="text-green-800 text-4xl font-bold">2K </label>
                <div class="absolute bg-red-400 rounded-md font-semibold text-xs text-gray-100 p-2 right-4 bottom-0">
                    - 5%
                </div>
            </div>
            <div class="relative flex-1 flex flex-col gap-2 px-4">
                <label class="text-gray-800 text-base font-semibold tracking-wider">Total Software</label>
                <label class="text-green-800 text-4xl font-bold">6K</label>
                <div class="absolute bg-green-400 rounded-md font-semibold text-xs text-gray-100 p-2 right-4 bottom-0">
                    + 10%
                </div>
            </div>
            <div class="relative flex-1 flex flex-col gap-2 px-4">
                <label class="text-gray-800 text-base font-semibold tracking-wider">Total To Do List</label>
                <label class="text-green-800 text-4xl font-bold">$1.2M</label>
                <div class="absolute bg-green-400 rounded-md font-semibold text-xs text-gray-100 p-2 right-4 bottom-0">
                    + 5%
                </div>
            </div>
        </div>
    </div>
</div>
 



 



<section class=" bg-blueGray-200 -mt-24">
  <div class="container mx-auto px-4">
    <div class="flex flex-wrap">
      <div class="lg:pt-12 pt-6 w-full md:w-4/12 px-4 text-center">
        <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-1 shadow-lg rounded-lg">
          <div class="px-4 flex-auto">
          </div>
        </div>
      </div>
    </div>
    <div class="flex flex-wrap items-center mt-16">
      <div class="w-full md:w-5/12 px-4 mr-auto ml-auto">
        <div class="text-blueGray-500 p-3 text-center inline-flex items-center justify-center w-16 h-16 mb-6 shadow-lg rounded-full bg-white">
          <i class="fas fa-user-friends text-xl"></i>
        </div>
        <h3 class="text-3xl mb-2 font-semibold leading-normal">
          Working with us is a Fun
        </h3>
        <p class="text-lg font-light leading-relaxed mt-4 mb-4 text-blueGray-600">
          Don't let your idea gone, re tuch it with group and member. Just make sure you enable them first via
          Environment. 
          The kit comes with colaboration, Fun and good environment.
        </p>
        <a href="#" class="font-bold text-blueGray-700 mt-8">Check out here!</a>
      </div>
      <div class="w-full md:w-4/12 px-4 mr-auto ml-auto">
        <div class="relative flex flex-col min-w-0 break-words bg-white w-full mb-2 shadow-lg rounded-lg bg-pink-500">
          <img alt="..." src="https://images.unsplash.com/photo-1522202176988-66273c2fd55f?ixlib=rb-1.2.1&amp;ixid=eyJhcHBfaWQiOjEyMDd9&amp;auto=format&amp;fit=crop&amp;w=1051&amp;q=80" class="w-full align-middle rounded-t-lg">
          <blockquote class="relative p-8 mb-4">
           
         
            <h4 class="text-xl font-bold text-white">
              Our Brand
            </h4>
            <p class="text-md font-light mt-2 text-white">
              Quiksilver, SOT, Napapijri, H&M etc.
            </p>
          </blockquote>
        </div>
      </div>
    </div>
  </div>





   <!-- component -->
<!-- This is an example component -->
<div class="container mx-auto my-5">

    <div class="relative rounded-lg flex flex-col md:flex-row items-center md:shadow-xl md:h-72 mx-2">
        
        <div class="z-0 order-1 md:order-2 relative w-full md:w-2/5 h-80 md:h-full overflow-hidden rounded-lg md:rounded-none md:rounded-r-lg">
            <div class="absolute inset-0 w-full h-full object-fill object-center bg-blue-400 bg-opacity-30 bg-cover bg-bottom" style="background-image: url( https://images.unsplash.com/photo-1525302220185-c387a117886e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80 ); background-blend-mode: multiply;"></div>
            <div class="md:hidden absolute inset-0 h-full p-6 pb-6 flex flex-col-reverse justify-start items-start bg-gradient-to-b from-transparent via-transparent to-gray-900">
                 
            </div>
            <svg class="hidden md:block absolute inset-y-0 h-full w-24 fill-current text-white -ml-12" viewBox="0 0 100 100" preserveAspectRatio="none">
                <polygon points="50,0 100,0 50,100 0,100" />
            </svg>
        </div>

        <div class="z-10 order-2 md:order-1 w-full h-full md:w-3/5 flex items-center -mt-6 md:mt-0">
            <div class="p-8 md:pr-18 md:pl-14 md:py-12 mx-2 md:mx-0 h-full bg-white rounded-lg md:rounded-none md:rounded-l-lg shadow-xl md:shadow-none">
                 
                <h4 class="hidden md:block text-xl text-gray-400">Apps Information</h4>
                <h3 class="hidden md:block font-bold text-2xl text-gray-700">IMS</h3>
                <p class="text-gray-600 text-justify">this information about internal inventory system to log your data in IT Departement.</p>
                <a class="flex items-baseline mt-3 text-blue-600 hover:text-blue-900 focus:text-blue-900" href="{{ 'todo'}}">
                    <span>
                    
                        
                    
                    </span>
                    <span class="text-xs ml-1">Hi, {{ Auth::user()->name }}&#x279c;</span>
                </a>
            </div>
        </div>

    </div>
</div>