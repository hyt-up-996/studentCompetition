function $(id) {
    return document.getElementById(id)
} 
// 控制下拉菜单的显示与隐藏
function list() {
    var navL = $('nav_l');
    var list = $('list');
    var num = 0;
    navL.onclick = function() {
        if (num === 0) {
            list.style.display = 'block';
            num = 1;
        } else {
            list.style.display = 'none';
            num = 0;
        }

    }
}
// 实现轮播图的切换
function banner() {
    // 1: 获取轮播图中的所有的图片。
    var banner = $('banner');
    var banList = banner.children
        // 获取底部的图标
    var btnList = $('btn').children
        // 2: 给箭头图标添加单击事件。
    var right = $('right')
    var left = $('left')
        // 3: 实现图片的切换。
    var index = 0; //获取的是第几张图片，如果为0表示第一张图片。
    right.onclick = function() {
        index++;
        // 判断index中的值，如果超出了整个轮播图中的元素的个数，则让index的值为0.
        if (index > banList.length - 1) {
            index = 0
        }
        for (var i = 0; i < banList.length; i++) {
            //将以前底部图标的样式清除。
            btnList[i].className = '';
            banList[i].style.display = 'none';
        }
        btnList[index].className = "on";
        banList[index].style.display = 'block';
    }
    left.onclick = function() {
            index--;
            // 判断index中的值，如果超出了整个轮播图中的元素的个数，则让index的值为0.
            if (index < 0) {
                index = 0
            }
            for (var i = 0; i < banList.length; i++) {
                //将以前底部图标的样式清除。
                btnList[i].className = '';
                banList[i].style.display = 'none';
            }
            btnList[index].className = "on";
            banList[index].style.display = 'block';
        }
        // 实现单击底部图标，完成轮播图的切换。
    for (var i = 0; i < btnList.length; i++) {
        btnList[i].index = i;
        btnList[i].onclick = function() {
            for (var j = 0; j < btnList.length; j++) {
                banList[j].style.display = 'none';
                btnList[j].className = '';
            }

            this.className = 'on';
            banList[this.index].style.display = 'block';
        }
    }
    // 实现轮播图的自动的切换。
    var setval = setInterval(function() {
        right.onclick()
    }, 2000)
    banner.onmouseenter = function() {
        clearInterval(setval)
    }
    banner.onmouseleave = function() {
        setval = setInterval(function() {
            right.onclick()
        }, 2000)
    }
}