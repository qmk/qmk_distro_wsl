import{_ as e,c as a,o as t,a1 as o,a2 as s}from"./chunks/framework.BvFBAkOM.js";const b=JSON.parse('{"title":"Frequently Asked Questions","description":"","frontmatter":{},"headers":[],"relativePath":"faq.md","filePath":"faq.md"}'),i={name:"faq.md"},n=o('<h1 id="frequently-asked-questions" tabindex="-1">Frequently Asked Questions <a class="header-anchor" href="#frequently-asked-questions" aria-label="Permalink to &quot;Frequently Asked Questions&quot;">​</a></h1><h2 id="why-can-t-i-flash-my-keyboard-from-within-wsl" tabindex="-1">Why can&#39;t I flash my keyboard from within WSL? <a class="header-anchor" href="#why-can-t-i-flash-my-keyboard-from-within-wsl" aria-label="Permalink to &quot;Why can&#39;t I flash my keyboard from within WSL?&quot;">​</a></h2><p>While currently a limitation of WSL, workarounds have been included for flashing the following:</p><ul><li>avrdude</li><li>dfu-util</li><li>dfu-programmer</li><li>bootloadHid</li><li>teensy-loader-cli</li></ul><p>The recommendation is to use <a href="https://github.com/qmk/qmk_toolbox" target="_blank" rel="noreferrer">QMK Toolbox</a> for all other supported flashing methods.</p><h2 id="how-can-i-flash-with-qmk-toolbox" tabindex="-1">How can I flash with QMK Toolbox? <a class="header-anchor" href="#how-can-i-flash-with-qmk-toolbox" aria-label="Permalink to &quot;How can I flash with QMK Toolbox?&quot;">​</a></h2><p>Files within the WSL filesystem can be flashed directly by using</p><div class="language- vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang"></span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span>\\\\wsl$\\QMK\\home\\qmk\\qmk_firmware\\&lt;firmware_name.ext&gt;</span></span></code></pre></div><p>For example,</p><p><img src="'+s+'" alt="toolbox example&quot;"></p><h2 id="how-can-i-access-my-firmware-files" tabindex="-1">How can I access my firmware files? <a class="header-anchor" href="#how-can-i-access-my-firmware-files" aria-label="Permalink to &quot;How can I access my firmware files?&quot;">​</a></h2><p>Within the WSL shell, you can run the following command to start browsing</p><div class="language-console vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang">console</span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;">wstart ~/qmk_firmware</span></span></code></pre></div><h2 id="why-is-action-so-slow" tabindex="-1">Why is <code>&lt;action&gt;</code> so slow? <a class="header-anchor" href="#why-is-action-so-slow" aria-label="Permalink to &quot;Why is `&lt;action&gt;` so slow?&quot;">​</a></h2><p>Due to limitations with WSL2, file access can be summarized as either:</p><ul><li>Linux - fast but files are isolated and <strong>might be lost</strong> if not careful</li><li>Windows - <strong>extremely slow</strong> but files are generally safer due to the single filesystem</li></ul><p>Is is recommended to use the <strong>Linux</strong> filesystem where possible. When running <code>qmk setup</code> manually, ensure that it is located inside the WSL instance instead of the Windows filesystem (ie. not in /mnt) with the <code>-H</code> option.</p><p>For more info see: <a href="https://docs.microsoft.com/en-us/windows/wsl/compare-versions" target="_blank" rel="noreferrer">https://docs.microsoft.com/en-us/windows/wsl/compare-versions</a></p><p>For new users, it is also recommended to enable automatic backups. This can re-configured with the &#39;Backup/Restore&#39; menu within the <code>qmk-admin</code> TUI.</p><h2 id="how-do-i-keep-my-environment-up-to-date" tabindex="-1">How do I keep my environment up to date? <a class="header-anchor" href="#how-do-i-keep-my-environment-up-to-date" aria-label="Permalink to &quot;How do I keep my environment up to date?&quot;">​</a></h2><p>Periodic updates will be available to cover both major OS, and QMK CLI updates. Installing the <a href="https://github.com/qmk/qmk_distro_wsl/releases/latest" target="_blank" rel="noreferrer">most recent release</a> will ensure you have the latest requirements to build QMK firmware.</p><p>Interim updates have to be performed manually. This can done with the &#39;Update System&#39; item within the <code>qmk-admin</code> TUI or by running the following commands:</p><div class="language-console vp-adaptive-theme"><button title="Copy Code" class="copy"></button><span class="lang">console</span><pre class="shiki shiki-themes github-light github-dark vp-code" tabindex="0"><code><span class="line"><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;">sudo apt update</span></span>\n<span class="line"><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;">sudo apt upgrade -y</span></span>\n<span class="line"><span style="--shiki-light:#005CC5;--shiki-dark:#79B8FF;">sudo python3 -m pip install qmk --upgrade</span></span></code></pre></div><h2 id="more-coming-soon" tabindex="-1">More Coming Soon... <a class="header-anchor" href="#more-coming-soon" aria-label="Permalink to &quot;More Coming Soon...&quot;">​</a></h2><div class="tip custom-block"><p class="custom-block-title">Need help with something?</p><p>The best place to get quick support is going to be on our <a href="https://discord.gg/Uq7gcHh" target="_blank" rel="noreferrer">Discord</a>. There is usually somebody online, and there are a bunch of very helpful people there.</p></div>',25),l=[n];function r(h,d,c,p,m,u){return t(),a("div",null,l)}const g=e(i,[["render",r]]);export{b as __pageData,g as default};