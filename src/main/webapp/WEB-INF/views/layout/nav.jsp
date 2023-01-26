<!-- side bar menu -->
<nav>
  <div class="sidebar-top">
    <span class="shrink-btn">
    <i class='bx bx-chevron-left'></i>
    </span>
    <img src="${pageContext.request.contextPath}/resources/images/logoicon.png" class="logo" alt="">
    <h3 class="hide"><a href="<c:url value='/'/>" style="text-decoration:none">DataHub</a></h3>
  </div>
  <div class="search">
    <!-- <i class='bx bx-home nav__icon'></i> -->
    <!-- <input type="text" class="hide" placeholder="Quick Search ..."> -->
    <!-- <span class="link hide">Home</span> -->
    <h4 class="hide">Home</h4>
  </div>
  <div class="sidebar-links">
    <ul>
      <div class="active-tab"></div>
      <li class="tooltip-element" data-tooltip="0">
        <a href="<c:url value='/word'/>" class="active" data-active="0">
          <div class="icon">
          <i class='bx bx-folder'></i>
           <i class='bx bxs-folder'></i>
          </div>
          <span class="link hide">Word</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="1">
        <a href="<c:url value='/domain'/>" data-active="1">
          <div class="icon">
          <i class='bx bxl-dailymotion' ></i>
          <i class='bx bxls-dailymotion' ></i>
          </div>
          <span class="link hide">Domain</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="2">
        <a href="<c:url value='/term'/>" data-active="2">
          <div class="icon">
            <i class='bx bx-text'></i>
            <i class='bx bxs-text'></i>
          </div>
          <span class="link hide">Term</span>
        </a>
      </li>
<!--       <li class="tooltip-element" data-tooltip="3">
        <a href="#" data-active="3">
          <div class="icon">
            <i class='bx bx-bar-chart-square'></i>
            <i class='bx bxs-bar-chart-square'></i>
          </div>
          <span class="link hide">Analytics</span>
        </a>
      </li> -->
      <div class="tooltip">
        <span class="show">Word</span>
        <span>Domain</span>
        <span>Term</span>
        <!-- <span>Analytics</span> -->
      </div>
    </ul>
    <h4 class="hide">Application</h4>
    <ul>
      <li class="tooltip-element" data-tooltip="0">
        <a href="<c:url value='/term/insert'/>" data-active="4">
          <div class="icon">
            <i class='bx bx-message-square-detail'></i>
            <i class='bx bxs-message-square-detail'></i>
          </div>
          <span class="link hide">Apply</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="1">
        <a href="<c:url value='/apply'/>" data-active="5">
          <div class="icon">
            <i class='bx bx-notepad'></i>
            <i class='bx bxs-notepad'></i>
          </div>
          <span class="link hide">Approve</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="2">
        <a href="<c:url value='/update'/>" data-active="6">
          <div class="icon">
            <i class='bx bxs-comment-add'></i>
            <i class='bx bxss-comment-add'></i>
          </div>
          <span class="link hide">Update</span>
        </a>
      </li>
      <li class="tooltip-element" data-tooltip="3">
        <a href="#" data-active="7">
          <div class="icon">
            <i class='bx bx-trash'></i>
            <i class='bx bxs-trash'></i>
          </div>
          <span class="link hide">Delete</span>
        </a>
      </li>
      <div class="tooltip">
        <span class="show">Apply</span>
        <span>Approve</span>
        <span>Update</span>
        <span>Delete</span>
      </div>
    </ul>
  </div>
  <div class="sidebar-footer">
    <a href="#" class="account tooltip-element" data-tooltip="0">
    <i class='bx bx-user'></i>
    </a>
    <div class="admin-user tooltip-element" data-tooltip="1">
      <div class="admin-profile hide">
    	 <img src="${pageContext.request.contextPath}/img/face-1.png" alt=""> 
        <div class="admin-info">
          <h3>Logout</h3>
          <!-- <h5>Admin</h5> -->
        </div>
      </div>
      <a href="<c:url value='/'/>" class="log-out">
      <i class='bx bx-log-out'></i>
      </a>
    </div>
    <div class="tooltip">
      <span class="show">Logout</span>
      <span>Logout</span>
    </div>
  </div>
  
  
</nav>