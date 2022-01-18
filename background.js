function handleClick(tab) {
    browser.tabs.duplicate(tab.id)
    browser.tabs.goBack(tab.id)
}

browser.browserAction.onClicked.addListener(handleClick);
