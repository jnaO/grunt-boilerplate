define(['Modernizr'], function (Mdnzr) {

    var ReplaceSVG = function () {},

        svg_browser_support = Mdnzr.svg,

        /**
         * Filters the array of <img>'s, and returns an array
         * only containing the <img>'s where the src="*.svg"
         *
         * @param arr
         *      array of <img> elements
         **/
        filterArray = function (arr) {
            var a = [],
                i;

            for (i = arr.length - 1; i >= 0; i--) {
                if (!!arr[i].src.match(/ *\.svg/)) {
                    a.push(arr[i]);
                }
            }
            return a;
        };

    /**
     * Replace the '.svg' in an images filename,
     * with '.png'
     *
     * .png and .svg files needs to be stored in the same place
     *
     * @param image
     *      single <img> element
     **/
    ReplaceSVG.prototype.replaceOne = function (image) {
        // Do nothing if browser supports svg natively
        if ( svg_browser_support ) {return;}

        // replace .svg with .png
        image.src = image.src.replace('.svg', '.png');
    };

    /**
     * Replaces the svg's in provided array of <img> elements
     *
     * @param array
     *      array of <img> elements
     **/
    ReplaceSVG.prototype.replaceInArray = function (array) {
        var images, i;

        // Do nothing if browser supports svg natively
        if ( svg_browser_support ) {return;}

        // only replace the .svg's
        images = filterArray(array);

        // Do the doings
        for (i = array.length - 1; i >= 0; i--) {
            this.replaceOne(array[i]);
        }
    };

    /**
     * Replace all svg images in document
     **/
    ReplaceSVG.prototype.replaceAll = function () {
        // Do nothing if browser supports svg natively
        if ( svg_browser_support ) {return;}

        // Replace all svg-images in page with corresponding png
        this.replaceInArray( document.getElementsByTagName('img') );

    };


    return ReplaceSVG;
});
