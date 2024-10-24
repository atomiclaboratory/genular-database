

     <footer class="footer mt-auto py-3">
        <div class="container-lg text-center">
            <p class="mb-2">© <?= date('Y'); ?> <a href="https://atomic-lab.org/" target="_blank" class="text-decoration-none text-primary"><strong>aTomic Lab</strong></a> - All rights reserved. Our code is more organized than our lab!</p>
            <p class="mb-3 fst-italic">Remember: If at first you don’t succeed, call it version 1.0!</p>
            <p class="mb-0">
                <a href="https://twitter.com/TomicAdriana" target="_blank" class="text-decoration-none text-primary">Twitter</a> | 
                <a href="https://atomic-lab.org/" target="_blank" class="text-decoration-none text-primary">Lab Website</a> | 
                <a href="https://github.com/atomiclaboratory" target="_blank" class="text-decoration-none text-primary">GitHub</a>
            </p>
        </div>
    </footer>



    <a href="<?php echo $_ENV['GITHUB_URL']; ?>" target="_blank" rel="noopener noreferrer" class="github-corner" aria-label="View source on GitHub" title="View source on GitHub">
        <svg width="80" height="80" viewBox="0 0 250 250" style="fill:#282c34; color:#fff; position: absolute; top: 0; border: 0; right: 0;">
                        <path d="M0,0 L115,115 L130,115 L142,142 L250,250 L250,0 Z"></path>
                        <path d="M128.3,109.0 C113.8,99.7 119.0,89.6 119.0,89.6 C122.0,82.7 120.5,78.6 120.5,78.6 C119.2,72.0 123.4,76.3 123.4,76.3 C127.3,80.9 125.5,87.3 125.5,87.3 C122.9,97.6 130.6,101.9 134.4,103.2" fill="currentColor" style="transform-origin: 130px 106px;" class="octo-arm"></path>
                        <path d="M115.0,115.0 C114.9,115.1 118.7,116.5 119.8,115.4 L133.7,101.6 C136.9,99.2 139.9,98.4 142.2,98.6 C133.8,88.0 127.5,74.4 143.8,58.0 C148.5,53.4 154.0,51.2 159.7,51.0 C160.3,49.4 163.2,43.6 171.4,40.1 C171.4,40.1 176.1,42.5 178.8,56.2 C183.1,58.6 187.2,61.8 190.9,65.4 C194.5,69.0 197.7,73.2 200.1,77.6 C213.8,80.2 216.3,84.9 216.3,84.9 C212.7,93.1 206.9,96.0 205.4,96.6 C205.1,102.4 203.0,107.8 198.3,112.5 C181.9,128.9 168.3,122.5 157.7,114.1 C157.9,116.9 156.7,120.9 152.7,124.9 L141.0,136.5 C139.8,137.7 141.6,141.9 141.8,141.8 Z" fill="currentColor" class="octo-body"></path>
                      </svg>
    </a>
    <!-- Include Scripts -->
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/json-viewer-master/src/json-viewer.js"></script>

    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdnjs.cloudflare.com/ajax/libs/highlight.js/11.9.0/highlight.min.js"></script>

    <!-- Select2 JS -->
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/main.js"></script>


    <!-- Datatables -->
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/2.0.1/js/dataTables.js"></script>
    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/2.0.1/js/dataTables.bootstrap4.js"></script>

    <script type="text/javascript" src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/buttons/3.0.0/js/dataTables.buttons.min.js"></script>
    <script type="text/javascript" src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/buttons/3.0.0/js/buttons.bootstrap4.min.js"></script>
    <script type="text/javascript" src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.datatables.net/buttons/3.0.0/js/buttons.html5.min.js"></script>


    <script type="text/javascript" src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>

    <script src="<?php echo $_ENV['WEB_URL']; ?>/static/3rdparty/cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartjs-chart-wordcloud"></script>
    
    <script src="https://cdn.plot.ly/plotly-latest.min.js"></script>
    
    <script src="https://unpkg.com/wavesurfer.js@7"></script>

    <script type="text/javascript" src="<?php echo $_ENV['WEB_URL']; ?>/static/canvas.js"></script>
</body>

</html>
