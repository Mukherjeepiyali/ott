<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="index_header.jsp" />
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category Page</title>
    <style>
    .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 20px;
            padding-top: 100px; /* Add padding from the top */
            filter: brightness(70%) blur(2px);
        }
        body {
            background-color: black; /* Set fallback background color */
            margin-top: 100px;
            padding-top: 10px;
            background-image:url('https://gumlet-images.assettype.com/afaqs%2F2022-07%2F70a5d7a2-2db6-42b0-bc01-23cd6b59d621%2Ffelix_mooneeram_evlkOfkQ5rE_unsplash.jpg?format=webp&w=480&dpr=2.6');
            color:white;
            font-family:Lucida Handwriting,cursive;
            
        }
        main {
    flex: 1;
    padding: 20px;
    padding-top: 10px; /* Add padding from the top */
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    gap: 20px;
  }

        /* Container for all images */
        .image-container {
    max-width: 1000px; /* Adjust the maximum width as needed */
    margin: 0 auto; /* Center the container */
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
}


        /* Individual image container */
        .image-item {
    position: relative;
    width: calc(25% - 20px); /* Adjusted width to accommodate 4 images in a row */
    overflow: hidden;
    border: 1px solid #ccc;
    margin-right: 20px; /* Add margin to create space between images */
    margin-bottom: 10px; /* Add margin to create space between rows */
    animation: floatAnimation 5s infinite; /* Apply floatAnimation */
    border-radius: 10px; /* Rounded corners */
    box-shadow: 0px 8px 16px rgba(0, 0, 0, 0.3); /* Shadow effect */
}



        .image-item img {
            width: 100%;
            height: auto;
            object-fit: cover;
            aspect-ratio: 4 / 3;
            border-radius: 10px; /* Rounded corners for the image */
           
        }

        .image-item:hover img {
            transform: scale(1.1);
        }

        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.5);
            opacity: 0;
            transition: opacity 0.3s ease;
        }

        .image-item:hover .overlay {
            opacity: 1;
        }

        .overlay-content {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            text-align: center;
            color: white;
        }

        /* Keyframe animation */
        @keyframes floatAnimation {
            0% {
                transform: translateY(0);
            }
            50% {
                transform: translateY(-10px);
            }
            100% {
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    
    <div class="image-container">
 <div class="image-item">
    <a href="catagory?genre=horror">
        <img src="https://wallpapers.com/images/featured-full/horror-geg5qaw6axcmxou6.jpg">
        <div class="overlay">    
            <div class="overlay-content">
                <h2>Horror</h2>
            </div>
        </div>
    </a>
</div>
        <div class="image-item">
        <a href="catagory?genre=comedy">
            <img src="https://wallpapercave.com/wp/wp2984088.jpg" onclick="window.location.href='horror.html';">
            <div class="overlay">    
                <div class="overlay-content">
                    <h2>Comedy</h2>
                </div>
            </div>
            </a>
        </div>
        <div class="image-item">
        <a href="catagory?genre=Thriller,Mystery">
            <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBYWFRgWFhYYGRgaHCMcHRgcHBoaHBoaGhweHBoaGiEcIS4lHB4rIRwcJjgmKy8xNTU1HiQ7QDs0Py40NTEBDAwMDw8PEQ8PEDEdGB0xMT8xPzQ/MT80ND8xMT80NDE0MTExMTQ/PzExMTExMTExMTExMTExNDExMTExNDExNP/AABEIAMIBAwMBIgACEQEDEQH/xAAcAAACAwEBAQEAAAAAAAAAAAACAwABBAUGBwj/xAA2EAABAwIEBAUDBAICAgMAAAABAAIRAyEEEjFBUWFx8AWBkaHBIrHRBhMy4ULxFHJSkhUkYv/EABYBAQEBAAAAAAAAAAAAAAAAAAABAv/EABcRAQEBAQAAAAAAAAAAAAAAAAABESH/2gAMAwEAAhEDEQA/APmdYXPfeqtjQATzQ1jJSnvOkqKXkjiFHs6KZb3+dVC+xlAknie+KMOQuO6IOGvsiDB5JjRZKYUTXWRTAmtd1SmpjAgc18Kw/dJLhCD9zZBsL/snU8t5MbrnB+900VLX4fCDTSqNkSVqZWDTfyjmuSwQb209FpZprPPy0QbsViC4CB3zWUViHD3Wv9r6Drx/pc9xy3I/tA7FH6tbfPkgw9Uz36LM5/BGxwQbjUulvfKRUbwVsO/ZQFK6/gfiOSWG7ddbzN42O9lxyJTmUIgoPoOGqDLLb63735LQKrwMwFhqVw/Aa5cWMmGyBlJJAJtIm4FtBa/NeodhiHAOvAA9BHmgVSxby2ePKx9u4WfE1yIjUm59LLstw4ywNvwuXWpHORxPt8IEZJZLhfXoJsuViaYmxPTVb/EZZY+S4tWvB6j2QKfRdJR4SMwz6RbT2m09fvCS/H/VFiOKOligHttN0GyowTYjy05x5q1VOq2BcKIj51VfeAgcxPygE739Up10UtR4Ol0fFCQZ1i/FAsFW07qeitzOKCA2+6NiBjoHVGwoGEEQqc5UXkoSZQWX80bXwEkaosyBwdbnw/CgdKU1MagJr4KNj8vfulgqnndBtq415blzGPiN1lqONhsPzsowiO+ajxoOXygpztUbQe9kqoY9U/Dv+oXtv5IGvdYIm7QjfQ+kOGkae5WrBlsaXQDhsG514XXw2CLoaOMKYaoTYaaepXp8BgAHCERz3+E1KH1jjMAmLWBtwk+q9H4VjxXhjyA+xH/6G4FteVl2m4UvblMRvzHJYq3g2QtcyzgZabQHc7aKjrHCwI08tV5rxvxNtMuZTa0vgZnm4bxFtT52mOK1V6tWoAx4ywYOWbiASbHS49F53xagGPdIgdL6qVXCr4l15JPUn5Wc1ZF7d9Vpqxb3GlliqVdUAb6zKGiYqNGtxw0J5SoyqBw6IKdQBwiJm3Wd+SK6NNhIBHuouVTxToHfyrWejiPmUovWmo2Ck1mgGJkcf9rSADzMbSre6CCQOnlb7oXNvY+yotQCT3ZW4yoQqQRpRNCpoRm141QU1yrMo5DKAnIGqOVBA5qcyFla4XTacoGOHurIkQo9jgrB5iUAsYY8/wAq50Tcn0k8x8qnMiOnygW5MwpynkjDWzqEyi9mbTuI9EGrEOYQA08LSmYWiIlczGseJc2YG42uUqljHjU/BKD2mCcxt3kARfseS9b4VVYXCLyJB5Wgr5C/xEzqY/P2W3w79VV6YytdLRo10kCbmLiBO087G6sR+gsHXY0CSL78+SdUqsI1ED2XwPwr9V1mPAef3GPMOa4kQHOEubkIIcNjeEyn+r3yA7OBAktIJLrZhcgZfcc1R9jxWKYP4kTxkLxfj1SXOMzwvK4TPEWPaXsqukCcjpDgBrB0PHXQ8lzMT4y55i86RYeait1Z4AvoufiHiCQeKzYjFloaHRDiT5ACepv7LntrSXGZaIieM9eqgaXp+CYXPBG11mpOaTyXQoVriAAJ0QFTwUgW79VFbc/H3/tRZVyn6G5SnM3TC/XrCAAHVaQNWi3N9LrROmnI/wBcVKxNiGkDib3AkwfMInC448dEJ1JOnzxugTUMk/18JTgnPfM89UDxOlvVBTO/yidw9kLZn5RIKd7KNCoqNN90FFUGa8FZdtsqBQWxNpOi6UxPpt+k97IHPfmZM8lnBiVZcQ3LvM+yAkhA1rzFtZH2KNzyQOnyUmk8wSOI+UwTI73KAv8Aj3md5jim4cGRa0x/XNOfTBtGluHnyWeoXMIj6gdGkuOUn0nrp6IOviaZ/ZcRvb12PCy8q8QTPovc4VpdTjc/cBec8TwsgkC/v3sqjhlydhwSbCUloTmki0kDhx68UHQwlMkwLm2kWlzWjTmQqfSdngjTiFnIBG17R0Ka7Gvcbuk8SA4mLDUGUU81Cy0x8I8OSTJPn/vqs+JOaDp/5RMaxI4X2v8AA2UHtEACQRug0VGtL3Nc3+EtBMgOGYw6LQS0g76ckjGUWANDJFjM3lw5xpBFut1tx9N+Zrg4OLxe0ZS1oEc7RBXLxRuyDbKNYFzrZQDh6E9F06AAiLunu0pLMOWiEeGcQ4Dee91KGfujmqVfug7e6iiua5upKCY5Jrxy70WZ5IWkMLt5M9PsjtCy5jCP9zlHv5oKe4RCHMFRN9vZFldGaDBkTFpFyPf3QBPIqZkdPXieasUxebd/dAEIv2zMHueKpGNUAFouOCWU5xtfWByj06IInRALVroCxPLjwGqytF9FpoOs7ogU83ClYfUDooePfBSttOka/lALbNJ5j5Ti+096pAIAPUfYp9N9gOVvUoCdirnaLlMb9URFjYknz3t/SCuwMeZ0zaxNpsfstWFYHaGN9vbRB6LwZ30Axca8/VJxNAGbXn1lbvDaQyGL290FNhLjOoBIjjFgtI89ivBWRmzZTP8AEAmeXD8LnPAmDfePnmvoHhmBY9ry8SX2Bi7CLzrcEwItukYn9M5pgMkNkw7KXRsGwYcekX1TB4iWgsOQH+QvEO+mZIIiQTN+WyttIu0AbOsAelh7LuU/CBna0sfINtN2lsEEA6lu+x422f8AwZY3OHSJggggi8XAnszspivM/wDFMtbEDSY811H4BrWTm2W84YC733AsMpMnXKIvHNZfGWQxr51kQOUSfcCOag4+N8QLmta0D6RBdeSJmOAA+TKXh6skCP8AEW4khZXvvaIPtyT6cNIjW0dYEG6DaMSXFwjThw58EXh75ey3+Qtb5WepinGxcCLDrl0k78FeFrZXtIMXmSYAHNBvFNvNRYf+Y/h7H8qKYEuvKTlN7rSNTbsIawGu/eqoTAQlncogfdC7vvvVADkU2g6bfkeaW9yENQML40VByFjJVgbIIHJrG7mUtgumvZCC3n0CADkhmUTBPHS1pvw5BBWUyrpgmeiJgg3TWQARy1QIDYRseNxrsi/bsSOEpJ1QDiKYDZBtItN9/wApzGOY1rzwHWSSftCXmiLD0C0PeTpF/SRogCo4Hy5WT81wZiRyHpCGqwOzZRYEwPSFifVdIB0GyD6N+mGA0nO5H3kfhVZrsxsLX4RoVp/RtL/68ay0npBkLjeM4zLIt139ei0j0fhIY8kAOBl2jzI+owBLYiDuJXo6GDa8ue1zbTM/TF9N7r5XgfGHsILXQQZn4PFe08E8dYGkkxqHC2/Cd9VR6BnhjC4OjMBOv8h05LneO4doaWudOZu4k2JyjrIWnwnxEOfBJka3hZf1biQGB7Q2WOmTrlII9yQg8f4hkiQ2CBJ46C8Ta65gfIghroOYAgOjTY2doNRstFRxe4mwJBJMWiDMaxc6C2iw4qu39olrvqbAvsQS02G8rKuDjWta9zRoD6ckykwvdJkw0adLe6yOdPUldDD2gFwAgcL9OaiCcyCZjopgQM7ZveOoG1lT3S4ki3DTpyTcMWiXWP8A4gcdPn2RRZSf46bSHT5qIP36jYAiAB9lEFVGwTw6pD3cT33K1PEkrG8d/dBdunNKDz5IwQgceSBbnc0IP+1TgqLkBB0QmOekZkRKBgdz9UwPss0qw9BoLuioFJzJtO4QNZ9RTHD7LOypHr7LW14I7KBbHENKUDJndMe36enfqlZxugMssFbmmQhc+RZCHmR1QaMxyxmDb3kXPCLfhZmskg63R4kfVfQAnTQmf6VUqrRNgbWkReNB57oPpf6O8WoU6Ls7wDBEaTOkcTbReVx9dj6rtxOnovMGoSDHEQATFp4p+GoOe4xmiVR0MOWtBdYAHcWiTBN16PwrAuy/yDZIFyQSDvEXEXC4NPAuDQZ3Bk3JMkyPRdRmKcwiCToZcc17WvoN/PyVHeb4kxmdoJzAnK7fWRzEekrHjMeXseHZ3S0wBGuxvaFm8VcH4d7wxuZpB/cGVpAJiDpmFxxIgeQ+D+IsdTeC14LA3+JBJ2c6chyGdOHNEcShiyGktcL2J1tra1tI8wseIqSx52kfJT8ZQio6JDXfUC6C7KTEuLbTIKzYin9GkQ71UGGjTlbW7dAhpjLsjp3g6f7UUzJIsNuHus9VkDnwPwjr1SOscfNIZUcZvx85EQgkv5+v9qJuV3+5UQPxJ7/0srzZasU8Ek3SgwEdUCWmO9UNVb6OGpmm4knP/iLRY8NTvuuflO/fkgSluTgxA8RqiBzFMe5uVsTmk5p9oSXKgqGG6tjVVMIhooBlW0qioEVGkrVhXGY5LLstFN5cP+ojYWkmED3O1HEfCwu2WljxN1nr62QE1yOm+/NIaUzKg2xO0tMyDA1Nvsgp0WgmCCdpFhw11OiJ5zN5257GTAv/ALSw6xseRiNN+n45INuB8OBc0GTJuBcWBMCNLSvf/pzAseAwNbG7bEzsSNYN187wIfkflJkRBvYzY8tBddHBnENqBzmOtrqA6OWk6xzVg+l+MeBsbTLTDQ0SHQBF/wDLlsV4qphGZCcwH0y4f5McDAnctvc7fd/hv6mrML6dUVCxs5XfyLRI1Nvfn5Hj/EWPAe186jmJ1BBG6o51PFPpsytdBLbOBsQbSLX39FxWvdQqQcwiMwY+MzSbtlpgg+YXUyiBlaSAMzv5EW1Jj+IEC/8AS42LZme8kOjNDSRlEAgDpaOPyoNNfGNfpIAO+4jQ218+NuCa7pYeRn1mVmw9VrXWFuYm06xvbonVa7S119rAcDPDTUqDIMUNwSidWEfTYxvrCxvbZEypEdEGhmkk39VVMifTb8KmvjnI668e9wnYZzDZ5g8QDdA393/p/wCoPvurWCq76jlDiJsePsog24hlyPZC5v0xafda30XOBMWG+65zwR5jdBT3evn8qs1xe6oH05pYAmyCEoHBGPdUWoheWygCJwVdboKTA+xEaoCo4cUVFYKoaIg1AC0UtEvKja6EDWM14arPW1tdNGIO2m/RJm6CmprWSoxifRHsgY+n9AJCFlTK6SJ3I4rbULckkcLeX9Lk1f5aoPWYDxTDUiQWPNyLEaXAmYmLWtuvQ4D9aYZjHNLL3uQ1xMj6bSJ4ed188ouc45QJ3J0WnE+FVGs/cyEsmC4XAPA8FR2Md+pjnzMljjqbakAE27CDD45j75QHEa2F/ZebFMkytdOpkgEWItEIOni6pyhuYBkzBJiQCSBNtTsNfdONxDXMywSQdZ1B+bR68VzsdULXm+YQQDeCCNsw0g8Bqs1GtHNBdUZbjp/fugpvs7om1cQHDmEOHbZ3T5CgURZLcAtFViS4d+qCNDhBRCodhrY6XHBADaLx3BVCRaNEQ3yVoJJUQeic+JJiRvx9Vy8QfTn8Lo12/Se9Vy6h71RSXwTbTnH9JaY5vJAT7IKyp2cZefP/AEgI5dwhLfVAsngqlW5kK8vFEAHK91Mqsoq4RU3xtKAKw5BTnoS5E8BUgrMm0wlSjpuQMiU9kiwQsYE89UAseRmE6hYA/wCq61B0GVjdqSg6eHxTW6Belf8AqQNoPpgWe0T1GnLWF4yixE9/GUGxr8xlamUXPDgIjW/Lb2XHbU4LpYXFQOW/RBmxNS2VzbiwdNwBtwPnccVncGkCBf37/tOxTJv37rLCqCcwZQQb8OCdhjAd0WcLRQH8tNFFC5xNvT4SX7Jxakn4+SiCp23Pqia6/t66pbHEXC0Uh/loUB5B3Ci0tjgSrRW2qDB9O5XMczv3XXfF+wue6nc6z3wQZnN8ksshai1UNY5fdBz6gICtp46plZl0jNdBC5QFUVQRFypCIBRFEBZBomNQuYgWSqTAxQU0CyEITMqtlMoh1N1oRvcUg2TC+yKS990bWg6oC1QoNIeANUivVzEHlBUDbfKL9q3d0ANG6aypG6hp2F0GSUDHVpskvciywdOyhc5BQK04abwduSXQbMp9Fo+rjEdmeQ9UCSVbG9+qsNWqmyRPK4QZGUxNxI4Ig/bQ80dKmTMa80T6J4kEoNlJkgfUPVUqoUDlF/YfhRB0XxJhYXMK6L2XtO6yYlpmCgxVtEtqc9nNLfrdBnqtSCxaHt1hRjDCDMGqNYFoNOP6QGeCBZYqypgjTZWAgFrUxjLo6V7LQykgzGkkvHFdEhYXgGUCmut8pjKkQOMf2hyJ4ZNs34QC6nKWQtbzH8T7a8dUMTM78AgzOYdfZV+1PmnVQJstFOnIQJZRMdET6ceffstBYQLeSRiHwBPfFAjNcd2RE3kIcgspPfeiCPeeCU5so8k6fZPotIBGxjb2E6b+iBFMWI3TaDDJPJN/asT66J9Og7+MXhBlLZKezCuIBEO/qya6lBkTPeiXQrEOEaXsgKhhy0kkbR5q6hBn6Tbbzj1XUoZSHG+kce9fdHhsK0NJLbbCDfadECKNABovCi6ApN9z9+iiKPEtEG2y5VbXyUUQZH/P5SXfBUURCXprNR3sooipV/j6rG/RRRSIS3Xvimu+FFFQ+jr3wW0K1EAVNCsW56fKiiKpCf5eiiikGh/8vM/KpmnmooqgCtWH0HQ/dRRBqOnl+Fgxe3n9laiAKX+PT8pQ79FFEDaOh8vlW0/cqlEDsRoVqZq3/r+VFEDKm3X4CbhmiW23VKIN2GH1evwujiBZWosqpmiiii0P/9k=" onclick="window.location.href='horror.html';">
            <div class="overlay">    
                <div class="overlay-content">
                    <h2>Thriller and Mystery</h2>
                </div>
            </div>
            </a>
        </div>
        <div class="image-item">
        <a href="catagory?genre=sci-fi">
            <img src="data:image/jpeg;base64,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" onclick="window.location.href='horror.html';">
            <div class="overlay">    
                <div class="overlay-content">
                    <h2>Sci-Fic</h2>
                </div>
            </div>
            </a>
        </div>
        
        <div class="image-item">
        <a href="catagory?genre=romance">
            <img src="https://i.pinimg.com/474x/0b/48/a9/0b48a9c9ea312bf4148e0a4a7c34fd2b.jpg"; onclick="window.location.href='adventure.html';">
            <div class="overlay">     
                <div class="overlay-content">
                    <h2>Romance</h2>
                </div>
            </div>
            </a>
        </div>
        <div class="image-item">
        <a href="catagory?genre=adventure">
            <img src="https://www.shutterstock.com/image-photo/hikers-backpacks-relaxing-on-top-600nw-525243061.jpg" onclick="window.location.href='adventure.html';">
            <div class="overlay">
                <div class="overlay-content">
                    <h2>Adventure</h2>
                </div>
            </div>
            </a>
        </div>
        <div class="image-item">
        <a href="catagory?genre=anime">
            <img src="https://4kwallpapers.com/images/wallpapers/anime-girl-girly-6024x4084-9792.jpghttps://4kwallpapers.com/images/wallpapers/anime-girl-girly-6024x4084-9792.jpg" onclick="window.location.href='adventure.html';">
            <div class="overlay">
                <div class="overlay-content">
                    <h2>Anime</h2>
                </div>
            </div>
            </a>
        </div>
        <div class="image-item">
        <a href="catagory?genre=action">
            <img src="https://wallpapers.com/images/hd/anime-fight-eren-and-titan-7s8g2zy7xxdmfziy.jpg" onclick="window.location.href='action.html';">
            <div class="overlay">
                <div class="overlay-content">
                    <h2>Action</h2>
                </div>
            </div>
            </a>
        </div>
                <div class="image-item">
        <a href="catagory?genre=Drama">
            <img src="https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/9pS1daC2n6UGc3dUogvWIPMR_OU/AAAABSy-fBR9Hedykg3q0zZKiQnTedE4bg9vx56r_EYZ19jHHUQlqcVZgUO8ubBgO158gVJg0VP5rGD38snc3DbzEFyCPG3EafHwkT79mmHLkxOvPmaTxOR_gJTi.jpg?r=2afg" onclick="window.location.href='action.html';">
            <div class="overlay">
                <div class="overlay-content">
                    <h2>Webseries</h2>
                </div>
            </div>
            </a>
        </div>
    </div>
</body>
</html>