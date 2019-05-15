
<h1 class="my-4">Tekno Shop</h1>

<div class="list-group ">

	<c:forEach items="${categories}" var="category">
		<a href="${contextRoot}/show/category/${category.id}/products" style="text-decoration: none;" 
		class="list-group-item" id="a_${category.name}">${category.name}</a>
	</c:forEach>

</div>