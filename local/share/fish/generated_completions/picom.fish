# picom
# Autogenerated from man page /usr/share/man/man1/picom.1.gz
complete -c picom -s h -l help -d 'Get the usage text embedded in program code, which may be more up-to-date tha…'
complete -c picom -s r -l shadow-radius -d 'The blur radius for shadows, in pixels.  (defaults to 12)'
complete -c picom -s o -l shadow-opacity -d 'The opacity of shadows.  (0. 0 - 1. 0, defaults to 0. 75)'
complete -c picom -s l -l shadow-offset-x -d 'The left offset for shadows, in pixels.  (defaults to -15)'
complete -c picom -s t -l shadow-offset-y -d 'The top offset for shadows, in pixels.  (defaults to -15)'
complete -c picom -s I -l fade-in-step -d 'Opacity change between steps while fading in.  (0. 01 - 1. 0, defaults to 0'
complete -c picom -s O -l fade-out-step -d 'Opacity change between steps while fading out.  (0. 01 - 1. 0, defaults to 0'
complete -c picom -s D -l fade-delta -d 'The time between steps in fade step, in milliseconds.  (> 0, defaults to 10)'
complete -c picom -s m -l menu-opacity -d 'Default opacity for dropdown menus and popup menus.  (0. 0 - 1'
complete -c picom -s c -l shadow -d 'Enabled client-side shadows on windows'
complete -c picom -s C -l no-dock-shadow -d 'Avoid drawing shadows on dock/panel windows'
complete -c picom -s f -l fading -d 'Fade windows in/out when opening/closing and when opacity changes, unless --n…'
complete -c picom -s F -d 'Equals to -f.  Deprecated'
complete -c picom -s i -l inactive-opacity -d 'Opacity of inactive windows.  (0. 1 - 1. 0, defaults to 1. 0)'
complete -c picom -s e -l frame-opacity -d 'Opacity of window titlebars and borders.  (0. 1 - 1. 0, disabled by default)'
complete -c picom -s G -l no-dnd-shadow -d 'Don\'t draw shadows on drag-and-drop windows'
complete -c picom -s b -l daemon -d 'Daemonize process.  Fork to background after initialization'
complete -c picom -l log-level -d 'Set the log level'
complete -c picom -l log-file -d 'Set the log file'
complete -c picom -l experimental-backends -d 'Use the new, reimplemented version of the backends'
complete -c picom -l show-all-xerrors -d 'Show all X errors (for debugging)'
complete -c picom -l config -d 'Look for configuration file at the path'
complete -c picom -l write-pid-path -d 'Write process ID to a file.  it is recommended to use an absolute path'
complete -c picom -l shadow-red -d 'Red color value of shadow (0. 0 - 1. 0, defaults to 0)'
complete -c picom -l shadow-green -d 'Green color value of shadow (0. 0 - 1. 0, defaults to 0)'
complete -c picom -l shadow-blue -d 'Blue color value of shadow (0. 0 - 1. 0, defaults to 0)'
complete -c picom -l inactive-opacity-override -d 'Let inactive opacity set by -i override the _NET_WM_OPACITY values of windows'
complete -c picom -l active-opacity -d 'Default opacity for active windows.  (0. 0 - 1. 0, defaults to 1. 0)'
complete -c picom -l inactive-dim -d 'Dim inactive windows.  (0. 0 - 1. 0, defaults to 0. 0)'
complete -c picom -l mark-wmwin-focused -d 'Try to detect WM windows (a non-override-redirect window with no child that h…'
complete -c picom -l mark-ovredir-focused -d 'Mark override-redirect windows that doesn\'t have a child window with WM_STATE…'
complete -c picom -l no-fading-openclose -d 'Do not fade on window open/close'
complete -c picom -l no-fading-destroyed-argb -d 'Do not fade destroyed ARGB windows with WM frame'
complete -c picom -l shadow-ignore-shaped -d 'Do not paint shadows on shaped windows'
complete -c picom -l detect-rounded-corners -d 'Try to detect windows with rounded corners and don\'t consider them shaped win…'
complete -c picom -l detect-client-opacity -d 'Detect _NET_WM_OPACITY on client windows, useful for window managers not pass…'
complete -c picom -l refresh-rate -d 'Specify refresh rate of the screen'
complete -c picom -l vsync -l no-vsync -d 'Enable/disable VSync'
complete -c picom -l sw-opti -d 'Limit picom to repaint at most once every 1 / refresh_rate second to boost pe…'
complete -c picom -l use-ewmh-active-win -d 'Use EWMH _NET_ACTIVE_WINDOW to determine currently focused window, rather tha…'
complete -c picom -l unredir-if-possible -d 'Unredirect all windows if a full-screen opaque window is detected, to maximiz…'
complete -c picom -l unredir-if-possible-delay -d 'Delay before unredirecting the window, in milliseconds.  Defaults to 0'
complete -c picom -l unredir-if-possible-exclude -d 'Conditions of windows that shouldn\'t be considered full-screen for unredirect…'
complete -c picom -l shadow-exclude -d 'Specify a list of conditions of windows that should have no shadow'
complete -c picom -l fade-exclude -d 'Specify a list of conditions of windows that should not be faded'
complete -c picom -l focus-exclude -d 'Specify a list of conditions of windows that should always be considered focu…'
complete -c picom -l inactive-dim-fixed -d 'Use fixed inactive dim value, instead of adjusting according to window opacity'
complete -c picom -l detect-transient -d 'Use WM_TRANSIENT_FOR to group windows, and consider windows in the same group…'
complete -c picom -l detect-client-leader -d 'Use WM_CLIENT_LEADER to group windows, and consider windows in the same group…'
complete -c picom -l blur-method -l blur-size -l blur-deviation -d 'Parameters for background blurring, see the BLUR section for more information'
complete -c picom -l blur-background -d 'Blur background of semi-transparent / ARGB windows'
complete -c picom -l blur-background-frame -d 'Blur background of windows when the window frame is not opaque'
complete -c picom -l blur-background-fixed -d 'Use fixed blur strength rather than adjusting according to window opacity'
complete -c picom -l blur-kern -d 'Specify the blur convolution kernel, with the following format: . sp '
complete -c picom -l blur-background-exclude -d 'Exclude conditions for background blur'
complete -c picom -l resize-damage -d 'Resize damaged region by a specific number of pixels'
complete -c picom -l invert-color-include -d 'Specify a list of conditions of windows that should be painted with inverted …'
complete -c picom -l opacity-rule -d 'Specify a list of opacity rules, in the format PERCENT:PATTERN, like 50:name …'
complete -c picom -l shadow-exclude-reg -d 'Specify a X geometry that describes the region in which shadow should not be …'
complete -c picom -l xinerama-shadow-crop -d 'Crop shadow of a window fully on a particular Xinerama screen to the screen'
complete -c picom -l backend -d 'Specify the backend to use: xrender, glx, or xr_glx_hybrid'
complete -c picom -l glx-no-stencil -d 'GLX backend: Avoid using stencil buffer, useful if you don\'t have a stencil b…'
complete -c picom -l glx-no-rebind-pixmap -d 'GLX backend: Avoid rebinding pixmap on window damage'
complete -c picom -l no-use-damage -d 'Disable the use of damage information'
complete -c picom -l xrender-sync-fence -d 'Use X Sync fence to sync clients\\*(Aq draw calls, to make sure all draw calls…'
complete -c picom -l glx-fshader-win -d 'GLX backend: Use specified GLSL fragment shader for rendering window contents'
complete -c picom -l force-win-blend -d 'Force all windows to be painted with blending'
complete -c picom -l dbus -d 'Enable remote control via D-Bus'
complete -c picom -l benchmark -d 'Benchmark mode.  Repeatedly paint until reaching the specified cycles'
complete -c picom -l benchmark-wid -d 'Specify window ID to repaint in benchmark mode'
complete -c picom -l no-ewmh-fullscreen -d 'Do not use EWMH to detect fullscreen windows'
complete -c picom -l max-brightness -d 'Dimming bright windows so their brightness doesn\'t exceed this set value'
complete -c picom -l transparent-clipping -d 'Make transparent windows clip other windows like non-transparent windows do, …'
complete -c picom -l sw-optis
complete -c picom -l use-damage
complete -c picom -l vsync-use-glfinish -d 'might fix some rendering issues with this backend'
complete -c picom -l blur-kerns -d 'option.  Corresponds to the'

