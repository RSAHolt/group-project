import { shallowMount } from '@vue/test-utils';
import App from '../App.vue'; // Adjust based on your actual app structure

describe('App.vue', () => {
    it('renders correctly', () => {
        const wrapper = shallowMount(App);
        expect(wrapper.exists()).toBe(true);
    });
});
